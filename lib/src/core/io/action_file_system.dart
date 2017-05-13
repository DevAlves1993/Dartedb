import "dart:io";

abstract class ActionFileSystem
{
  /// Create File specified in the url
  File create(String url);
  /// Create all File specified in the url list
  File createSeveral(List<String> listUrl);
  /// Open File specified in the url
  File open(String url);
  /// Open File specified in the url with a Mode
  File openWithMode(String url,FileMode mode);
  /// Verify if File exist
  bool fileExist(String url);
  /// Delete a File specified in the url
  void delete(String url);
  /// Delete all File specified in the url list
  void deleteSeveral(List<String> listUrl);
}