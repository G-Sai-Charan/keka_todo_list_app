import 'package:flutter/material.dart';

enum TaskCategory {
  work(Icons.timer_outlined, Colors.red),
  health(Icons.favorite, Colors.orange),
  home(Icons.home, Colors.green),
  travel(Icons.flight, Colors.pink),
  shopping(Icons.shopping_bag, Colors.deepOrange),
  personal(Icons.person, Colors.pinkAccent),
  education(Icons.school, Colors.black87),
  others(Icons.calendar_month_rounded, Colors.purple),
  social(Icons.people, Colors.brown);

  static TaskCategory stringToTaskCategory(String name) {
    try {
      return TaskCategory.values.firstWhere(
        (category) => category.name == name,
      );
    } catch (e) {
      return TaskCategory.others;
    }
  }

  final IconData icon;
  final Color color;
  const TaskCategory(this.icon, this.color);
}
