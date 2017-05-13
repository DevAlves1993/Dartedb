import 'dart:io';
import 'package:dartedb/src/core/io/reader_file.dart';
import 'package:test/test.dart';

void main() {
  test("First Test",()  {
    ReaderFile reader = new ReaderFile();
    File file = reader.create("textR1.txt");
  });

  test("Second Test",()  {
    ReaderFile reader = new ReaderFile();
    List<File> list = reader.createSeveral(["textR2.txt","textR3.txt"]);
    expect(list.isNotEmpty,true);
  });

  test("Third Test",()  {
    ReaderFile reader = new ReaderFile();
    bool text = reader.fileExist("textR2.txt");
    expect(text,true);
  });

}