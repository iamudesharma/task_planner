/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: unused_import
// ignore_for_file: unnecessary_import
// ignore_for_file: overridden_fields

import 'package:serverpod_client/serverpod_client.dart';
import 'dart:typed_data';
import 'protocol.dart';

class Task extends SerializableEntity {
  @override
  String get className => 'Task';

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
}
