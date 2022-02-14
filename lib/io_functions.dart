import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart' as pp;
import 'package:status_saver/models.dart';

Future<File> copyFile(File sourceFile, String newPath) async {
  final newFile = await sourceFile.copy(newPath);
  return newFile;
}

String getBaseName(String filePath) {
  return path.basename(filePath);
}

Future<String> getRootDir() async {
  var externalDirectoryPath = await pp.getExternalStorageDirectory();
  if (externalDirectoryPath != null) {
    final subbed = externalDirectoryPath.path.replaceFirst(
      '/Android/data/com.veelabz.wa_status_saver/files',
      '',
    );
    return subbed;
  }
  throw 'Failed to getExternalStorageDirectory';
}

Future<bool> saveStatus(Status status) async {
  try {
    var filePath = status.map(
      img: (img) => img.name,
      video: (vid) => vid.name,
    );
    final baseNameWithExtension = getBaseName(filePath);
    final rootDir = await getRootDir();
    print(rootDir);
    //TODO: Read user defined folder name from shared preferences
    final savedImagesPath = rootDir + '/SavedStatus/';
    final _ = await Directory(savedImagesPath).create();
    final imgPath = savedImagesPath + baseNameWithExtension;
    await copyFile(File(filePath), imgPath);
    return true;
  } catch (e) {
    print(e);
    return false;
  }
}
