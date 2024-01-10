import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do_ist/utils/utils.dart';


final statusProvider = StateProvider.autoDispose<TaskStatus>((ref) {
  return TaskStatus.low;
});
