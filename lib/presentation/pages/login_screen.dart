import 'package:assignment/business_logic/controller/controller.dart';
import 'package:assignment/presentation/widgets/common_card.dart';
import 'package:assignment/presentation/widgets/gradient_container.dart';
import 'package:assignment/presentation/widgets/login_screen_content.dart';
import 'package:assignment/presentation/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(Controller());
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: GradientContainer(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Logo(),
              const SizedBox(height: 20.0),
              CommonCard(
                height: Get.height * 0.7,
                child: const LoginScreenContent(),
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
