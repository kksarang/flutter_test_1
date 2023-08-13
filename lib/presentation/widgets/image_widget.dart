import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String asset;
  final double heightAndWidth;
  const ImageWidget(
      {Key? key, required this.asset, required this.heightAndWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      asset,
      height: heightAndWidth,
      width: heightAndWidth,
    );
  }
}
