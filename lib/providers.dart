import 'dart:io';
import 'dart:typed_data';
import 'package:chewie/chewie.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:status_saver/io_functions.dart';
import 'package:status_saver/models.dart';
import 'package:video_player/video_player.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import 'storage_permission_statenotifier.dart';

final permissionPod =
    StateNotifierProvider<PermissionStatusHandler, PermissionState>(
  (ref) => PermissionStatusHandler(),
);

final statusesPod = FutureProvider<List<Status>>((ref) async {
  final rootDir = await getRootDir();
  final statusesPath = rootDir + '/WhatsApp/Media/.Statuses/';
  print(statusesPath);
  final dir = Directory(statusesPath);
  final files = dir.listSync();
  final resultStream = files
      .where((e) => e.path.endsWith('.jpg') || e.path.endsWith('.mp4'))
      .map((event) async {
    final stats = await event.stat();
    print(event.path);
    if (event.path.endsWith('.jpg')) {
      return Status.img(stats, event.path);
    } else {
      return Status.video(stats, event.path);
    }
  });
  final stati = Future.wait(resultStream);
  return stati;
});

final chewieControllerPod = FutureProviderFamily<ChewieController, String>(
    (ref, String filename) async {
  final videoPlayerController = VideoPlayerController.file(File(filename));

  await videoPlayerController.initialize();

  final chewieController = ChewieController(
    videoPlayerController: videoPlayerController,
    autoPlay: true,
    looping: true,
  );
  ref.onDispose(() {
    videoPlayerController.dispose();
  });
  return chewieController;
});

final thumbNailCreatorPod =
    FutureProviderFamily<String, String>((ref, String file) async {
  final fileName = await VideoThumbnail.thumbnailFile(
    video: file,
    thumbnailPath: (await getTemporaryDirectory()).path,
    imageFormat: ImageFormat.WEBP,
    quality: 75,
  );
  if (fileName != null) {
    return fileName;
  } else {
    throw 'Failed to create thumbnail';
  }
});

final inMemThumbnailCreatorPod =
    FutureProviderFamily<Uint8List, String>((ref, String file) async {
  final uint8list = await VideoThumbnail.thumbnailData(
    video: file,
    imageFormat: ImageFormat.JPEG,
    maxWidth: 128,
    quality: 75,
  );
  if (uint8list != null) {
    return uint8list;
  } else {
    throw 'Failed to create thumbnail';
  }
});
