library dartedb;

import 'dart:io';

abstract class ActionFolder
{
  /// Create Folder specified url
  Directory create(String url);
  /// Verify if folder exist
  bool folderExist(String url);
  /// Delete Folder specified url
  void delete(String url);
}