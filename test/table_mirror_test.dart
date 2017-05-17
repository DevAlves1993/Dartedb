import 'dart:mirrors';
import 'package:dartedb/src/core/reflect/annotation/column.dart';
import 'package:dartedb/src/core/reflect/annotation/table.dart';
import 'package:test/test.dart';

@Table("User")
class Test {
  @Column("test",2)
  String va;

  Test(this.va);
}

void main() {
  test("First Test",() {
    Test t = new Test("va");
    InstanceMirror instance = reflect(t);
    if(instance.hasReflectee)
    {
      ClassMirror clas = instance.type;
      List<InstanceMirror> metadata = clas.metadata;
      metadata.forEach((m) {
        if(m.reflectee is Table)
        {
          Table dy = m.reflectee;
          print(dy.name);
        }
      });
      clas.declarations.values
                    .forEach((d) {
        print(MirrorSystem.getName(d.simpleName));
      });
    }
  });
}
