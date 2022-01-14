import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/todolist.dart';
import 'package:todo_list/todolistModel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TodoListModel>(
      create: (context) => TodoListModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'To-do List',
        theme: ThemeData(
          primarySwatch: Colors.yellow,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("TO-DO LIST"),
          ),
          body: Todolist(),
        ),
      ),
    );
  }
}
