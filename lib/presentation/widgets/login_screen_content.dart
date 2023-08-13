import 'package:assignment/business_logic/controller/controller.dart';
import 'package:assignment/presentation/pages/profile_screen.dart';
import 'package:assignment/presentation/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login_button.dart';
import 'text_field_widget.dart';

class LoginScreenContent extends StatelessWidget {
  const LoginScreenContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Controller>(
      init: Controller(),
      builder: (controller) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TextWidget(
                data: 'Sign in', fontSize: 18.0, fontWeight: FontWeight.w400),
            const SizedBox(height: 35.0),
            TextFieldWidget(
              textEditingController: controller.usernameController,
              hint: 'Username',
              inputType: TextInputType.name,
              textInputAction: TextInputAction.next,
              prefixIcon:
                  Icon(Icons.mail_outline, color: Theme.of(context).hintColor),
            ),
            const SizedBox(height: 10.0),
            TextFieldWidget(
              textEditingController: controller.passwordController,
              hint: 'Password',
              inputType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.done,
              prefixIcon:
                  Icon(Icons.lock_outlined, color: Theme.of(context).hintColor),
              onEditingComplete: () => loginManagement(controller),
            ),
            const SizedBox(height: 10.0),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: TextWidget(
                  data: 'Forgot Password',
                  color: Theme.of(context).primaryColorDark,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const SizedBox(height: 35.0),
            LoginButton(
              onTap: () {
                loginManagement(controller);
              },
              buttonText: 'Login',
              isLoading: controller.apiLoading,
            )
          ],
        );
      },
    );
  }

  void loginManagement(Controller controller) async {
    if (controller.usernameController.text.isNotEmpty &&
        controller.passwordController.text.isNotEmpty &&
        controller.usernameController.text != '' &&
        controller.passwordController.text != '') {
      await controller.login(
        userName: controller.usernameController.text,
        password: controller.passwordController.text,
      );
    }
  }
}
