// ignore_for_file: deprecated_member_use

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/todolistModel.dart';

class Todolist extends StatelessWidget {
  final TextEditingController t1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    TodoListModel todos = Provider.of<TodoListModel>(context);
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Expanded(
              child: ListView.builder(
                  itemCount: todos.allTasks.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(todos.allTasks[index].tasktitle),
                      trailing: FlatButton(
                          onPressed: () {
                            todos.deleteTask(todos.allTasks[index]);
                          },
                          child: Text("DONE")),
                    );
                  }),
            ),
          ),
          Container(
            child: Row(
              children: [
                Flexible(
                    child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  controller: t1,
                )),
                RaisedButton(
                    onPressed: () {
                      todos.addTask(Task(tasktitle: t1.text));
                    },
                    child: Text("ADD")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
