import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:status_saver/providers.dart';

import 'package:status_saver/models.dart';
import 'package:status_saver/main.dart';

class VideoPlayerPage extends ConsumerWidget {
  final Status status;

  VideoPlayerPage({
    Key? key,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final chewieCtrlStatus = watch(chewieControllerPod(status.filePath));
    return Scaffold(
      appBar: AppBar(title: Text(status.basename)),
      body: chewieCtrlStatus.when(
        data: (chewieController) => MyVideoWidget(
          chewieController: chewieController,
        ),
        loading: () => Center(child: CircularProgressIndicator()),
        error: (err, st) => ErrStWidget(
          error: err,
          message: 'Failed to initialize video player',
          trace: st,
          retryFunction: () =>
              context.refresh(chewieControllerPod(status.filePath)),
          retryMessage: 'Try Again',
        ),
      ),
    );
  }
}

class MyVideoWidget extends StatefulWidget {
  const MyVideoWidget({
    Key? key,
    required this.chewieController,
  }) : super(key: key);

  final ChewieController chewieController;

  @override
  _MyVideoWidgetState createState() => _MyVideoWidgetState();
}

class _MyVideoWidgetState extends State<MyVideoWidget> {
  @override
  Widget build(BuildContext context) {
    return Chewie(controller: widget.chewieController);
  }

  @override
  void dispose() {
    widget.chewieController.videoPlayerController.pause();
    super.dispose();
  }
}

class VideoThumbWidget extends ConsumerWidget {
  final String videoPath;
  final double height;
  VideoThumbWidget({
    Key? key,
    required this.videoPath,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final chewieCtrlStatus = watch(inMemThumbnailCreatorPod(videoPath));
    return chewieCtrlStatus.when(
      data: (controller) => Container(
        height: height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.memory(controller, height: height, width: double.infinity),
            Icon(Icons.play_arrow, color: Colors.red),
          ],
        ),
      ),
      loading: () => CircularProgressIndicator(),
      error: (_, st) => Icon(Icons.error),
    );
  }
}
