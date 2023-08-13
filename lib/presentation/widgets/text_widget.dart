import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String data;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  const TextWidget(
      {Key? key,
      required this.data,
      this.color,
      this.fontSize,
      this.fontWeight,
      this.fontStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        color: color ?? Colors.black,
        fontSize: fontSize ?? 15.0,
        fontWeight: fontWeight ?? FontWeight.normal,
        fontStyle: fontStyle ?? FontStyle.normal,
      ),
    );
  }
}
