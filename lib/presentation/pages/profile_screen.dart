import 'package:assignment/presentation/widgets/custom_bottom_navbar.dart';
import 'package:assignment/presentation/widgets/floating_button.dart';
import 'package:assignment/presentation/widgets/gradient_container.dart';
import 'package:assignment/presentation/widgets/logo.dart';
import 'package:assignment/presentation/widgets/profile_screen_content.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.blue,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: GradientContainer(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [Logo(), ProfileScreenContent()],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
        tooltip: 'Increment',
        child: const FloatingButton(),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
