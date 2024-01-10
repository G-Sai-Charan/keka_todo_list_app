import 'package:flutter/material.dart';
import 'package:to_do_ist/utils/utils.dart';

class AppBackground extends StatelessWidget {
  const AppBackground({super.key, this.header, this.body, this.headerHeight});
  final Widget? body;
  final Widget? header;
  final double? headerHeight;

  @override
  Widget build(BuildContext context) {
    final colors = Colors.lightBlueAccent;
    final deviceSize = context.deviceSize;

    return Column(
      children: [
        Container(
          height: headerHeight,
          width: deviceSize.width,
          color: colors,
          child: Center(child: header),
        ),
        Container(
            width: deviceSize.width,
            color: colors,
            child: body,
          ),
      ],
    );
  }
}
