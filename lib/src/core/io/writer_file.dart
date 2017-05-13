import 'dart:async';
import 'dart:io';

import 'package:dartedb/src/core/io/action_file_system.dart';
import 'package:logging/logging.dart';


class WriterFile extends ActionFileSystem
{
  final Logger _LOG = new Logger("WriterFile");
  @override
  File create(String url) {
    if(url != null)
    {
      File file = new File(url);
      Future<File> future = file.create();
      future.then((f) => _LOG.info("File created with success")
        ,onError: () => _LOG.severe("Error during creation of file"));
      return file;
    }
    return null;
  }

  @override
  List<File> createSeveral(List<String> listUrl) {
    if(listUrl.isNotEmpty)
    {
      List<File> list = new List<File>();
      listUrl.forEach((s) => list.add(create(s)));
    }
    return null;
  }

  @override
  bool fileExist(String url) {
    if(url != null)
    {
      File file = new File(url);
      return file.existsSync();
    }
    return false;
  }

  @override
  void delete(String url) {
    if(url != null)
    {
      File file = new File(url);
      Future<File> future = file.delete();
      future.then((f) => _LOG.info("File deleted with success")
      ,onError: () => _LOG.severe("Error during deleted of file"));
    }
  }

  @override
  void deleteSeveral(List<String> listUrl) {
    if(listUrl.isNotEmpty)
    {
      listUrl.forEach((s) => delete(s));
    }
  }

}