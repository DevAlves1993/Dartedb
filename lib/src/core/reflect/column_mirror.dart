
import 'dart:mirrors';

import 'package:dartedb/src/core/reflect/annotation/column.dart';

///
class ColumnMirror {
  // TODO : implement later


  /// Obtain ClassMirror of Object
  ClassMirror _getClass(Object object)
  {
    if(object != null)
    {
      InstanceMirror instance = reflect(object);
      if(instance.hasReflectee)
      {
        ClassMirror mirror = instance.type;
        return mirror;
      }
    }
    return null;
  }

  void _getAllFieldAnnoted(ClassMirror mirror)
  {
    List<DeclarationMirror> list = mirror.declarations.values;
  }

  /// Obtain Value of field if mapped with @Column annotation
  dynamic _getFieldValue(DeclarationMirror declaration,List<InstanceMirror> list)
  {
    // TODO : implement later
    return null;
  }

  bool _isMapped(InstanceMirror instance)
  {
    return instance.reflectee is Column;
  }
}