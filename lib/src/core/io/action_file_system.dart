library dartedb;

import "dart:io";

abstract class ActionFileSystem
{
  /// Create File specified in the url
  File create(String url);
  /// Create all File specified in the url list
  List<File> createSeveral(List<String> listUrl);
  /// Verify if File exist
  bool fileExist(String url);
  /// Delete a File specified in the url
  void delete(String url);
  /// Delete all File specified in the url list
  void deleteSeveral(List<String> listUrl);
}