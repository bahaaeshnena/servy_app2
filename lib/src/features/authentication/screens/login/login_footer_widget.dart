import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:servy_app2/src/constants/image_string.dart';
import 'package:servy_app2/src/features/authentication/screens/signup/signup_screen.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(height: 10),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(
              image: AssetImage(tGoogleLogoImage),
              width: 20.0,
            ),
            onPressed: () {},
            label: const Text("Sign In With Google"),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed: () => Get.to(() => const SignUpScreen()),
          child: const Text.rich(
            TextSpan(
              text: "Dont Have An Account?  ",
              style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
              children: [
                TextSpan(text: 'Signup', style: TextStyle(color: Colors.blue)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
