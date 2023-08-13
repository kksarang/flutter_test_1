import 'package:assignment/presentation/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginButton extends StatelessWidget {
  final Function() onTap;
  final String buttonText;
  final bool isLoading;
  const LoginButton({
    Key? key,
    required this.onTap,
    required this.buttonText,
    required this.isLoading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: isLoading ? () {} : onTap,
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
      child: SizedBox(
        height: 30.0,
        width: Get.width,
        child: Center(
          child: isLoading
              ? const SizedBox(
                  height: 16.0,
                  width: 16.0,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                )
              : TextWidget(
                  data: buttonText,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
        ),
      ),
    );
  }
}
