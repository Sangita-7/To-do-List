// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class TodoListModel extends ChangeNotifier {
  final List<Task> _tasks = [];

  List<Task> get allTasks => _tasks;

  void addTask(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}

class Task {
  String tasktitle;
  bool isCompleted = false;

  Task({required this.tasktitle}) {
    isCompleted = false;
  }
}
