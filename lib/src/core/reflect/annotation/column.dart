library dartedb;

/// Is Used to specified the mapped column for a persistent property.
/// If no Column annotation is specified, the default values apply.
class Column {
  /// Name of property
  final String name;
  /// Length of property
  final String length;

  Column(this.name,this.length);
}