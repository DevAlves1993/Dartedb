import 'dart:io';
import 'package:dartedb/src/core/io/writer_file.dart';
import 'package:test/test.dart';

void main() {
  test("First Test",()  {
    WriterFile writer = new WriterFile();
    File file = writer.create("textW1.txt");
  });

  test("Second Test",()  {
    WriterFile writer = new WriterFile();
    List<File> list =  writer.createSeveral(["textW2.txt","textW3.txt","textW4.txt"]);
    expect(list.isNotEmpty,true);
  });

  test("Third Test",()  {
    WriterFile writer = new WriterFile();
    bool text = writer.fileExist("textW2.txt");
    expect(text,true);
  });

}