import 'package:flutter/foundation.dart';

import '/backend/sqlite/init.dart';
import 'queries/read.dart';
import 'queries/update.dart';

import 'package:sqflite/sqflite.dart';
export 'queries/read.dart';
export 'queries/update.dart';

class SQLiteManager {
  SQLiteManager._();

  static SQLiteManager? _instance;
  static SQLiteManager get instance => _instance ??= SQLiteManager._();

  static late Database _database;
  Database get database => _database;

  static Future initialize() async {
    if (kIsWeb) {
      return;
    }
    _database = await initializeDatabaseFromDbFile(
      'expenses',
      'expenseTeste.db',
    );
  }

  /// START READ QUERY CALLS

  Future<List<GetCategoriaRow>> getCategoria() => performGetCategoria(
        _database,
      );

  Future<List<GetBudgetRow>> getBudget() => performGetBudget(
        _database,
      );

  Future<List<GetCategoriaCopyRow>> getCategoriaCopy() =>
      performGetCategoriaCopy(
        _database,
      );

  /// END READ QUERY CALLS

  /// START UPDATE QUERY CALLS

  Future addExpense({
    String? name,
    int? categoryid,
    int? amount,
  }) =>
      performAddExpense(
        _database,
        name: name,
        categoryid: categoryid,
        amount: amount,
      );

  Future deleteExpense({
    int? id,
  }) =>
      performDeleteExpense(
        _database,
        id: id,
      );

  Future addRecurring({
    String? name,
    int? categoryid,
    int? amount,
    String? frequency,
  }) =>
      performAddRecurring(
        _database,
        name: name,
        categoryid: categoryid,
        amount: amount,
        frequency: frequency,
      );

  Future deleteRecurring({
    int? id,
  }) =>
      performDeleteRecurring(
        _database,
        id: id,
      );

  Future addBudget({
    int? categoryid,
    int? amount,
  }) =>
      performAddBudget(
        _database,
        categoryid: categoryid,
        amount: amount,
      );

  Future deleteBudget({
    int? id,
  }) =>
      performDeleteBudget(
        _database,
        id: id,
      );

  Future deleteCategoria({
    int? id,
  }) =>
      performDeleteCategoria(
        _database,
        id: id,
      );

  Future addCategoria({
    String? name,
  }) =>
      performAddCategoria(
        _database,
        name: name,
      );

  /// END UPDATE QUERY CALLS
}
