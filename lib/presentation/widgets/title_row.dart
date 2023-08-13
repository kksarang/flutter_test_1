import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'image_widget.dart';
import 'language_section.dart';
import 'text_widget.dart';

class TitleRow extends StatelessWidget {
  const TitleRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        padding: const EdgeInsets.all(2.0),
        height: 20.0,
        width: 90.0,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 2.0),
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: const LanguageSection(),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: Get.width * 0.10),
        child: TextWidget(
          data: 'Account',
          color: Theme.of(context).primaryColorDark,
          fontSize: 23.0,
        ),
      ),
      trailing: const ImageWidget(
        asset: 'assets/exit.png',
        heightAndWidth: 30.0,
      ),
    );
  }
}
