import 'dart:io';
import 'package:unittest/unittest.dart';
import 'package:unittest/vm_config.dart';
import 'package:dartedb/src/core/io/folder_system.dart';

void main() {


  test("First Test",() {
    FolderSystem folderSystem = new FolderSystem();
    Directory dir = folderSystem.create("fold");
    expect(dir.existsSync(),true);
  });

  test("Second Test",() {
    FolderSystem folderSystem = new FolderSystem();
      bool exist = folderSystem.folderExist("fold");
    expect(exist,true);
  });

  test("Three Test",() {
    FolderSystem folderSystem = new FolderSystem();
      folderSystem.delete("fold");
  });

}