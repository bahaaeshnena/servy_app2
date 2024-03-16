import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:servy_app2/src/respository/authentication_respository/authentication_respository.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  //call this Function from Design & it will do the rest

  void registerUser(String email, String password) {
    AuthenticationRespository.instance
        .createUserWithEmailAndPassword(email, password);
  }
}
