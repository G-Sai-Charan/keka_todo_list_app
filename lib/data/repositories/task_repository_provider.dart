import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do_ist/data/data.dart';

final taskRepositoryProvider = Provider<TaskRepository>((ref) {
  final datasource = ref.read(taskDatasourceProvider);
  return TaskRepositoryImpl(datasource);
});
