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
  late int post_t;

  Task({
    this.id,
    required this.task_id,
    required this.post_t,
  });

  Task.fromSerialization(Map<String, dynamic> serialization) {
    var _data = unwrapSerializationData(serialization);
    id = _data['id'];
    task_id = _data['task_id']!;
    post_t = _data['post_t']!;
  }

  @override
  Map<String, dynamic> serialize() {
    return wrapSerializationData({
      'id': id,
      'task_id': task_id,
      'post_t': post_t,
    });
  }
}
