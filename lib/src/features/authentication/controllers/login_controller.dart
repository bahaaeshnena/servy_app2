import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:servy_app2/src/respository/authentication_respository/authentication_respository.dart';

class LogInController extends GetxController {
  static LogInController get instance => Get.find();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  //call this Function from Design & it will do the rest

  void loginUser(String email, String password) {
    AuthenticationRespository.instance
        .loginWithEmailAndPassword(email, password);
  }
}
