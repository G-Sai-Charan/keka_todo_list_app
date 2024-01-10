import 'package:flutter/material.dart';

enum TaskStatus {
  high(Icons.looks_one, Colors.red),
  medium(Icons.looks_two, Colors.indigo),
  low(Icons.looks_3, Colors.brown);
  static TaskStatus stringToTaskStatus(String name) {
    try {
      return TaskStatus.values.firstWhere(
            (status) => status.name == name,
      );
    } catch (e) {
      return TaskStatus.low;
    }
  }

  final IconData icon;
  final Color color;
  const TaskStatus(this.icon, this.color);
}
