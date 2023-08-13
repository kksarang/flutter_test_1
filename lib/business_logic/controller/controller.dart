import 'package:assignment/models/customer_model.dart';
import 'package:assignment/presentation/pages/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  late Customer customer;
  bool apiLoading = false;

  Future<void> login(
      {required String userName, required String password}) async {
    try {
      apiLoading = true;
      update();
      await Dio().post(
        'https://api-dev.itujar.com/customer/login',
        data: {"userName": userName, "password": password},
      ).then((response) async {
        if (response.data['statusCode'] == 200) {
          customer = Customer.fromJson(response.data['data']);
          await Get.to(() => const ProfileScreen(),
              transition: Transition.fadeIn);
        } else {
          Get.snackbar(
            '${response.data['message']}',
            '',
            colorText: Colors.white,
            backgroundColor: Colors.red[400],
          );
          debugPrint(response.toString());
        }
      });
      // "candidate12" , "hire@12"
      usernameController.text = '';
      passwordController.text = '';
    } catch (e) {
      debugPrint(e.toString());
    }
    apiLoading = false;
    update();
  }
}
