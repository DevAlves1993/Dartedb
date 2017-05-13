library dartedb;

import 'dart:async';
import 'dart:io';
import 'package:dartedb/src/core/io/action_folder.dart';
import 'package:logging/logging.dart';


class FolderSystem extends ActionFolder
{
  final Logger _LOG = new Logger("FolderSystem");

  @override
  Directory create(String url) {
    if(url != null)
    {
      Directory dir = new Directory(url);
      Future<Directory> directory = dir.create();
      directory.whenComplete(() => _LOG.info("Directory created with success"));
      return dir;
    }
    return null;
  }

  @override
  void delete(String url) {
    if(url != null)
    {
      Directory dir = new Directory(url);
      if(folderExist(url))
      {
        Future<FileSystemEntity> fileSystem = dir.delete();
        fileSystem.whenComplete(() => _LOG.info("Directory deleted with success"));
      }
    }
  }

  @override
  bool folderExist(String url) {
    if(url != null)
    {
      Directory dir = new Directory(url);
      return dir.existsSync();
    }
    return false;
  }
}