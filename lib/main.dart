import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pract_dos/home/home_page.dart';
import 'package:pract_dos/models/todo_reminder.dart';

void main() async {
  // ignore: todo
  // TODO: inicializar hive y agregar el adapter
  // inicializar antes de crear la app
  WidgetsFlutterBinding.ensureInitialized();
  // local sotarage
  final _localStorage = await getApplicationDocumentsDirectory();
  Hive
    ..init(_localStorage.path)
    ..registerAdapter(TodoRemainderAdapter());
  // open boxes
  await Hive.openBox("remainders");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarea 2',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HomePage(),
    );
  }
}
