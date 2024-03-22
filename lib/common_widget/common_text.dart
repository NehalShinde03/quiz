import 'package:flutter/material.dart';
import 'package:quiz_app/common_attribute/common_color.dart';
import 'package:quiz_app/common_attribute/common_value.dart';

class CommonText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? fontColor;

  const CommonText({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.fontColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight ?? TextWeight.regular,
        fontSize: fontSize ?? TextSize.title,
        color: fontColor ?? CommonColor.black,
        fontFamily: "Poppins",
      ),
    );
  }
}
