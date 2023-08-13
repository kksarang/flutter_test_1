import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hint;
  final TextInputType inputType;
  final Icon prefixIcon;
  final TextInputAction textInputAction;
  final Function()? onEditingComplete;

  const TextFieldWidget({
    Key? key,
    required this.hint,
    required this.inputType,
    required this.prefixIcon,
    required this.textEditingController,
    required this.textInputAction,
    this.onEditingComplete,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.0,
      child: Container(
        height: 50.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: TextField(
          controller: textEditingController,
          keyboardType: inputType,
          textInputAction: textInputAction,
          decoration: InputDecoration(
            hintText: hint,
            border: InputBorder.none,
            prefixIcon: prefixIcon,
          ),
          onEditingComplete: onEditingComplete,
        ),
      ),
    );
  }
}
