import 'package:sqflite/sqflite.dart';

/// BEGIN ADD EXPENSE
Future performAddExpense(
  Database database, {
  String? name,
  int? categoryid,
  int? amount,
}) {
  final query = '''
INSERT into expense (name , categoryid , amount) VALUES ('${name}' , ${categoryid} , ${amount} )
''';
  return database.rawQuery(query);
}

/// END ADD EXPENSE

/// BEGIN DELETE EXPENSE
Future performDeleteExpense(
  Database database, {
  int? id,
}) {
  final query = '''
DELETE FROM expense WHERE  id=$id
''';
  return database.rawQuery(query);
}

/// END DELETE EXPENSE

/// BEGIN ADD RECURRING
Future performAddRecurring(
  Database database, {
  String? name,
  int? categoryid,
  int? amount,
  String? frequency,
}) {
  final query = '''
INSERT into recurring (name , categoryid , amount , frequency) VALUES ('${name}' , ${categoryid} , ${amount} , '${frequency}')
''';
  return database.rawQuery(query);
}

/// END ADD RECURRING

/// BEGIN DELETE RECURRING
Future performDeleteRecurring(
  Database database, {
  int? id,
}) {
  final query = '''
DELETE FROM recurring WHERE  id=$id
''';
  return database.rawQuery(query);
}

/// END DELETE RECURRING

/// BEGIN ADD BUDGET
Future performAddBudget(
  Database database, {
  int? categoryid,
  int? amount,
}) {
  final query = '''
INSERT into budget ( categoryid , amount) VALUES (${categoryid} , ${amount} )
''';
  return database.rawQuery(query);
}

/// END ADD BUDGET

/// BEGIN DELETE BUDGET
Future performDeleteBudget(
  Database database, {
  int? id,
}) {
  final query = '''
DELETE FROM budget WHERE  id=$id
''';
  return database.rawQuery(query);
}

/// END DELETE BUDGET

/// BEGIN DELETE CATEGORIA
Future performDeleteCategoria(
  Database database, {
  int? id,
}) {
  final query = '''
DELETE FROM categoria WHERE  id=$id
''';
  return database.rawQuery(query);
}

/// END DELETE CATEGORIA

/// BEGIN ADD CATEGORIA
Future performAddCategoria(
  Database database, {
  String? name,
}) {
  final query = '''
INSERT into categoria ( name) VALUES ('${name}' )
''';
  return database.rawQuery(query);
}

/// END ADD CATEGORIA
