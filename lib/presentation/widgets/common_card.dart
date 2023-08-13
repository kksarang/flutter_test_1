import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final double height;
  const CommonCard({
    Key? key,
    required this.child,
    this.padding,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: Get.width,
      padding: padding ?? EdgeInsets.zero,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 238, 248, 253),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(15.0)),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).primaryColorDark,
            blurRadius: 30.0,
            spreadRadius: 20.0,
            offset: const Offset(
              8.0,
              8.0,
            ),
          )
        ],
      ),
      child: child,
    );
  }
}
