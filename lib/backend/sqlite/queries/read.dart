import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN GET CATEGORIA
Future<List<GetCategoriaRow>> performGetCategoria(
  Database database,
) {
  final query = '''
SELECT * FROM categoria
''';
  return _readQuery(database, query, (d) => GetCategoriaRow(d));
}

class GetCategoriaRow extends SqliteRow {
  GetCategoriaRow(Map<String, dynamic> data) : super(data);

  String get name => data['name'] as String;
}

/// END GET CATEGORIA
