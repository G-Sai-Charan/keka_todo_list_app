import 'package:flutter/material.dart';
import 'package:to_do_ist/utils/utils.dart';

class CommonContainer extends StatelessWidget {
  const CommonContainer({
    super.key,
    this.child,
    this.height,
    this.width,
    this.color,
    this.borderRadius = 16,
    this.padding,
  });
  final Widget? child;
  final double? height;
  final double? width;
  final Color? color;
  final double borderRadius;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    final colors = Colors.lightBlueAccent.withOpacity(0.2);

    return Container(
      height: height,
      width: width,
      padding: padding,
      decoration: BoxDecoration(
        color: color ?? colors,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: child,
    );
  }
}

