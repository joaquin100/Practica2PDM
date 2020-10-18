// ignore: todo
// TODO: convertir en adapter de Hive y utilizar build runner para generar el adapter
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
part 'todo_reminder.g.dart';

@HiveType(typeId: 1, adapterName: "TodoRemainderAdapter")
class TodoRemainder {
  @HiveField(0)
  final String todoDescription;
  @HiveField(1)
  final String hour;

  TodoRemainder({
    @required this.todoDescription,
    @required this.hour,
  });
}
