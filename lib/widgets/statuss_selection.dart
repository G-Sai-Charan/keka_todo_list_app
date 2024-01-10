import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:to_do_ist/utils/utils.dart';
import 'package:to_do_ist/widgets/widgets.dart';
import 'package:gap/gap.dart';
import 'package:to_do_ist/providers/status_provider.dart';


class StatussSelection extends ConsumerWidget {
  const StatussSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedStatus = ref.watch(statusProvider);
    final List<TaskStatus> statuss = TaskStatus.values.toList();

    return SizedBox(
      height: 60,
      child: Row(
        children: [
          Text(
            ' priority   :',
            style: context.textTheme.titleLarge,
          ),
          const Gap(10),
          Expanded(
            child: ListView.separated(
              itemCount: statuss.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: const AlwaysScrollableScrollPhysics(),
              itemBuilder: (ctx, index) {
                final status = statuss[index];
                final color = Colors.lightBlueAccent;
                return InkWell(
                  onTap: () {
                    ref.read(statusProvider.notifier).state = status;
                  },
                  borderRadius: BorderRadius.circular(30),
                  child: CircleContainer(
                    //color: Colors.white10,
                    color: status.color.withOpacity(0.1),
                    borderColor: status.color,
                    child: Icon(
                      status.icon,
                      color: selectedStatus == status
                          ? color
                          : status.color,
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => const Gap(8),
            ),
          ),
        ],
      ),
    );
  }
}
