import 'package:assignment/business_logic/controller/controller.dart';
import 'package:assignment/presentation/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common_card.dart';
import 'summary_tile.dart';
import 'title_row.dart';

class ProfileScreenContent extends StatelessWidget {
  const ProfileScreenContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonCard(
      height: Get.height * 0.8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const TitleRow(),
          Card(
            elevation: 2.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
            child: GetBuilder<Controller>(
              builder: (controller) {
                return Column(
                  children: [
                    ListTile(
                      title: TextWidget(
                        data: controller.customer.customerName ?? '',
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                      ),
                      subtitle: TextWidget(
                        data: controller.customer.email ?? '',
                        fontSize: 14.0,
                      ),
                    ),
                    const Divider(
                      height: 1.0,
                      thickness: 0.8,
                      indent: 15.0,
                      endIndent: 15.0,
                      color: Colors.grey,
                    ),
                    const SummaryTile()
                  ],
                );
              },
            ),
          )
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
    );
  }
}
