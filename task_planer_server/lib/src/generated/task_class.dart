/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: unused_import
// ignore_for_file: unnecessary_import
// ignore_for_file: overridden_fields

import 'package:serverpod/serverpod.dart';
import 'package:serverpod_serialization/serverpod_serialization.dart';
import 'dart:typed_data';
import 'protocol.dart';

class Task extends TableRow {
  @override
  String get className => 'Task';
  @override
  String get tableName => 'task';

  static final t = TaskTable();

  @override
  int? id;
  late String task_id;
  late String task_title;
  String? des;
  late DateTime created_at;
  late bool is_completed;

  Task({
    this.id,
    required this.task_id,
    required this.task_title,
    this.des,
    required this.created_at,
    required this.is_completed,
  });

  Task.fromSerialization(Map<String, dynamic> serialization) {
    var _data = unwrapSerializationData(serialization);
    id = _data['id'];
    task_id = _data['task_id']!;
    task_title = _data['task_title']!;
    des = _data['des'];
    created_at = DateTime.tryParse(_data['created_at'])!;
    is_completed = _data['is_completed']!;
  }

  @override
  Map<String, dynamic> serialize() {
    return wrapSerializationData({
      'id': id,
      'task_id': task_id,
      'task_title': task_title,
      'des': des,
      'created_at': created_at.toUtc().toIso8601String(),
      'is_completed': is_completed,
    });
  }

  @override
  Map<String, dynamic> serializeForDatabase() {
    return wrapSerializationData({
      'id': id,
      'task_id': task_id,
      'task_title': task_title,
      'des': des,
      'created_at': created_at.toUtc().toIso8601String(),
      'is_completed': is_completed,
    });
  }

  @override
  Map<String, dynamic> serializeAll() {
    return wrapSerializationData({
      'id': id,
      'task_id': task_id,
      'task_title': task_title,
      'des': des,
      'created_at': created_at.toUtc().toIso8601String(),
      'is_completed': is_completed,
    });
  }

  @override
  void setColumn(String columnName, value) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'task_id':
        task_id = value;
        return;
      case 'task_title':
        task_title = value;
        return;
      case 'des':
        des = value;
        return;
      case 'created_at':
        created_at = value;
        return;
      case 'is_completed':
        is_completed = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<Task>> find(
    Session session, {
    TaskExpressionBuilder? where,
    int? limit,
    int? offset,
    Column? orderBy,
    List<Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.find<Task>(
      where: where != null ? where(Task.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Task?> findSingleRow(
    Session session, {
    TaskExpressionBuilder? where,
    int? offset,
    Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Task>(
      where: where != null ? where(Task.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<Task?> findById(Session session, int id) async {
    return session.db.findById<Task>(id);
  }

  static Future<int> delete(
    Session session, {
    required TaskExpressionBuilder where,
    Transaction? transaction,
  }) async {
    return session.db.delete<Task>(
      where: where(Task.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    Session session,
    Task row, {
    Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    Session session,
    Task row, {
    Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    Session session,
    Task row, {
    Transaction? transaction,
  }) async {
    return session.db.insert(row, transaction: transaction);
  }

  static Future<int> count(
    Session session, {
    TaskExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.count<Task>(
      where: where != null ? where(Task.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef TaskExpressionBuilder = Expression Function(TaskTable t);

class TaskTable extends Table {
  TaskTable() : super(tableName: 'task');

  @override
  String tableName = 'task';
  final id = ColumnInt('id');
  final task_id = ColumnString('task_id');
  final task_title = ColumnString('task_title');
  final des = ColumnString('des');
  final created_at = ColumnDateTime('created_at');
  final is_completed = ColumnBool('is_completed');

  @override
  List<Column> get columns => [
        id,
        task_id,
        task_title,
        des,
        created_at,
        is_completed,
      ];
}

@Deprecated('Use TaskTable.t instead.')
TaskTable tTask = TaskTable();
