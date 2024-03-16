import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:servy_app2/src/constants/image_string.dart';
import 'package:servy_app2/src/constants/sizes.dart';
import 'package:servy_app2/src/constants/text.dart';
import 'package:servy_app2/src/features/authentication/screens/login/login_screen.dart';
import 'package:servy_app2/src/widgets/form/form_header_widget.dart';

import 'widget/signup_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const FormHeaderWidget(
                  image: tWelcomeScreenImage,
                  title: tSignUpTitle,
                  subTitle: tSignUpSubTitle,
                ),
                const SignUpFormWidget(),
                Column(
                  children: [
                    const Text("OR"),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Image(
                          image: AssetImage(tGoogleLogoImage),
                          width: 20.0,
                        ),
                        label: const Text("Sign In With Google"),
                      ),
                    ),
                    TextButton(
                      onPressed: () => Get.to(() => const LoginScreen()),
                      child: const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: tAlreadyHaveAnAccount,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            ),
                            TextSpan(text: " Login"),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
