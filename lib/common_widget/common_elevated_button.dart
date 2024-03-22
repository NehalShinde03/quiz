import 'package:flutter/material.dart';
import 'package:quiz_app/common_attribute/common_value.dart';

class CommonElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final EdgeInsetsDirectional? padding;
  final Color? backgroundColor;
  final Color? textColor;
  final Widget? child;
  final double? shapeBorder;

  const CommonElevatedButton({
    super.key,
    this.onPressed,
    this.padding,
    this.backgroundColor,
    this.child,
    this.textColor,
    this.shapeBorder,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          padding: padding,
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(shapeBorder ?? 0.0)))),
      child: child,
    );
  }
}
