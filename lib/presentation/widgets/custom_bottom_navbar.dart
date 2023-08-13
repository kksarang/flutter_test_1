import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'image_widget.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 10.0,
      notchMargin: 10.0,
      clipBehavior: Clip.antiAlias,
      shape: const CircularNotchedRectangle(),
      color: Theme.of(context).primaryColor.withAlpha(0),
      child: Container(
        width: Get.width * 0.7,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
        ),
        child: BottomNavigationBar(
          elevation: 0.0,
          selectedLabelStyle:
              const TextStyle(color: Colors.black, fontSize: 13.0),
          unselectedLabelStyle:
              const TextStyle(color: Colors.black, fontSize: 13.0),
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: ImageWidget(
                asset: 'assets/tabitem.png',
                heightAndWidth: 25.0,
              ),
              label: 'Company List',
            ),
            BottomNavigationBarItem(
              icon: ImageWidget(
                asset: 'assets/person.png',
                heightAndWidth: 25.0,
              ),
              label: 'Profile',
            )
          ],
        ),
      ),
    );
  }
}
