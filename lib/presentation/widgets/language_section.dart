import 'package:flutter/material.dart';

import 'text_widget.dart';

class LanguageSection extends StatelessWidget {
  const LanguageSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const TextWidget(data: 'إنجليزي', fontSize: 11.0),
        const SizedBox(width: 1.0),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(1.0),
          ),
          child: const TextWidget(
            data: 'English',
            fontSize: 11.0,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
