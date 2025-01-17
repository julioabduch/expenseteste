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
  int get id => data['id'] as int;
}

/// END GET CATEGORIA

/// BEGIN GET BUDGET
Future<List<GetBudgetRow>> performGetBudget(
  Database database,
) {
  final query = '''
SELECT b.id , c.name AS name, b.amount
FROM budget b
JOIN categoria c ON b.categoryid = c.id;
''';
  return _readQuery(database, query, (d) => GetBudgetRow(d));
}

class GetBudgetRow extends SqliteRow {
  GetBudgetRow(Map<String, dynamic> data) : super(data);

  String get name => data['name'] as String;
  int get amount => data['amount'] as int;
  int get id => data['id'] as int;
}

/// END GET BUDGET

/// BEGIN GET CATEGORIACOPY
Future<List<GetCategoriaCopyRow>> performGetCategoriaCopy(
  Database database,
) {
  final query = '''
SELECT * FROM categoria
''';
  return _readQuery(database, query, (d) => GetCategoriaCopyRow(d));
}

class GetCategoriaCopyRow extends SqliteRow {
  GetCategoriaCopyRow(Map<String, dynamic> data) : super(data);

  String get name => data['name'] as String;
  int get id => data['id'] as int;
}

/// END GET CATEGORIACOPY

/// BEGIN GET TESTE
Future<List<GetTesteRow>> performGetTeste(
  Database database,
) {
  final query = '''
SELECT * FROM teste
''';
  return _readQuery(database, query, (d) => GetTesteRow(d));
}

class GetTesteRow extends SqliteRow {
  GetTesteRow(Map<String, dynamic> data) : super(data);

  String get nome => data['nome'] as String;
  int get id => data['id'] as int;
}

/// END GET TESTE
