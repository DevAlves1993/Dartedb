library dartedb;

/// Specify the name of the table and indicate that the class must be persisted
class Table {
  /// Name of Database
  /// If value is empty, the name of field is recuperate as default name
  final String name;

  Table(this.name);
}