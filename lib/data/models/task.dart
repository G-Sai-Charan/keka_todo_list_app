import 'package:equatable/equatable.dart';
import 'package:to_do_ist/utils/utils.dart';

class Task extends Equatable {
  final int? id;
  final String title;
  final String note;
  final TaskCategory category;
  final TaskStatus status;
  final String time;
  final String date;
  final bool isCompleted;
  const Task({
    this.id,
    required this.title,
    required this.category,
    required this.status,
    required this.time,
    required this.date,
    required this.note,
    required this.isCompleted,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      TaskKeys.id: id,
      TaskKeys.title: title,
      TaskKeys.note: note,
      TaskKeys.category: category.name,
      TaskKeys.status: status.name,
      TaskKeys.time: time,
      TaskKeys.date: date,
      TaskKeys.isCompleted: isCompleted ? 1 : 0,
    };
  }

  factory Task.fromJson(Map<String, dynamic> map) {
    return Task(
      id: map[TaskKeys.id],
      title: map[TaskKeys.title],
      note: map[TaskKeys.note],
      category: TaskCategory.stringToTaskCategory(map[TaskKeys.category]),
      status: TaskStatus.stringToTaskStatus(map[TaskKeys.status]),
      time: map[TaskKeys.time],
      date: map[TaskKeys.date],
      isCompleted: map[TaskKeys.isCompleted] == 1 ? true : false,
    );
  }

  @override
  List<Object> get props {
    return [
      title,
      note,
      category,
      status,
      time,
      date,
      isCompleted,
    ];
  }

  Task copyWith({
    int? id,
    String? title,
    String? note,
    TaskCategory? category,
    TaskStatus? status,
    String? time,
    String? date,
    bool? isCompleted,
  }) {
    return Task(
      id: id ?? this.id,
      title: title ?? this.title,
      note: note ?? this.note,
      category: category ?? this.category,
      status: status ?? this.status,
      time: time ?? this.time,
      date: date ?? this.date,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}
