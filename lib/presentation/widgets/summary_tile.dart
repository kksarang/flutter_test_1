import 'package:flutter/material.dart';

import 'image_widget.dart';
import 'text_widget.dart';

class SummaryTile extends StatelessWidget {
  const SummaryTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Icon(
            Icons.document_scanner_outlined,
            size: 15.0,
            color: Colors.grey[500],
          ),
          const SizedBox(width: 4.0),
          const TextWidget(
            data: 'Tax Summary',
            fontSize: 14.0,
          ),
        ],
      ),
      trailing: const ImageWidget(
        asset: 'assets/arrow.png',
        heightAndWidth: 15.0,
      ),
    );
  }
}
