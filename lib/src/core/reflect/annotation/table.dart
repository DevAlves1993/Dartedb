
/// Specify the name of the table and indicate that the class must be persisted
class Table {
  /// Name of Database
  /// If value is empty, the name of field is recuperate as default name
  final String _name;

  const Table(this._name);

  String get name => _name;
}