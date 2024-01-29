import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon/models/model.dart';
import 'package:hackathon/services/api_client/api_client.dart';
import 'package:hackathon/ui/navbar/custom_navbar_view.dart';
import 'package:hackathon/utils/sharedPreferences.dart';

class SignInController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final isLoading = false.obs;
  static User? matchedUser;
  ApiClient apiClient = ApiClient();
  // void navToSignUp() {
  //   Get.toNamed(RouteName.signUp);
  // }

  void signIn() async {
    print("Button pressed");
    isLoading(true);
    try {
      List<User> response = await apiClient.getUsers();
      print(response);

      log(response.toString());
      for (var user in response) {
        if (user.email == emailController.text &&
            user.password == passwordController.text) {
          matchedUser = user;
          print(matchedUser);
          break;
        }
      }

      if (matchedUser != null) {
        log('Matched User ID: ${matchedUser!.sId}');
        await SharedPref.storeValue('id', '${matchedUser!.sId}');
        Get.offAll(CustomNavbar());
        // Store matchedUser.id in a secure place
      } else {
        isLoading(false);
        log('No user found with the provided email and password');
      }
    } catch (e) {
      print(e);
      log(e.toString());
    }
  }

  // void forgetPassword() {
  //   log("Password");
  // }
}
