library dartedb;

import 'dart:mirrors';

import 'package:dartedb/src/core/reflect/annotation/table.dart';

///
class TableMirror {


  /// Obtains Entity Name
  String obtainEntityName(Object value)
  {
    ClassMirror mirror = _getClass(value);
    if(mirror != null)
    {
      bool isMapped = _isMapped(mirror);
      if(isMapped)
      {
        List<InstanceMirror> list = mirror.metadata;
        return _checkDeclaration(list);
      }
      return null;
    }
  }

  /// Obtain ClassMirror of instance
  ClassMirror _getClass(Object object){
    if(object != null)
    {
      InstanceMirror mirror = reflect(object);
      if(mirror.hasReflectee) {
        ClassMirror classMirror = mirror.type;
        return classMirror;
      }
    }
    return null;
  }

  /// Verify if Class was mapped with annotation @Table
  bool _isMapped(ClassMirror mirror) {
    List<InstanceMirror> metadata =  mirror.metadata;
    if(metadata.isEmpty)
      return false;
    else {
      bool value = false;
      metadata
          .forEach((m) {
        if(m.reflectee is Table)
          value = true;
      });
      return value;
    }
  }

  /// Verify if DeclarationMirror contain annotation @Table
  String _checkDeclaration(List<InstanceMirror> mirrors) {
    String name = null;
    mirrors.forEach((m) {
      if(m.reflectee is Table) {
        Table table = m.reflectee;
        name = table.name;
      }
    });
    return name;
  }

}