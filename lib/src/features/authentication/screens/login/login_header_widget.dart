import 'package:flutter/material.dart';
import 'package:servy_app2/src/constants/image_string.dart';
import 'package:servy_app2/src/constants/text.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          tWelcomeScreenImage,
          height: size.height * 0.3,
        ),
        const Text(
          tLoginTitle,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w900,
            fontFamily: 'Montserrat-SemiBold',
          ),
        ),
        const Text(
          tLoginSubTitle,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 17,
          ),
        ),
      ],
    );
  }
}
