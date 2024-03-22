import 'package:flutter/material.dart';

class CommonContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final Widget? child;
  final Border? border;
  final BorderRadius? borderRadius;
  final Color? color;
  final EdgeInsetsDirectional? padding;
  final EdgeInsetsDirectional? margin;

  const CommonContainer({
    super.key,
    this.width,
    this.height,
    this.child,
    this.border,
    this.borderRadius,
    this.color,
    this.padding, this.margin
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius,
        border: border,
      ),
      child: child,
    );
  }
}
