import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GradientContainer extends StatelessWidget {
  final Widget child;
  const GradientContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Theme.of(context).primaryColorDark,
            Theme.of(context).primaryColor,
          ],
        ),
      ),
      child: child,
    );
  }
}
