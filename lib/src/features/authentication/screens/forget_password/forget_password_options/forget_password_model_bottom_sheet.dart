import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:servy_app2/src/constants/sizes.dart';
import 'package:servy_app2/src/constants/text.dart';
import 'package:servy_app2/src/features/authentication/screens/forget_password/forget_password_mail/forget_password_mail.dart';
import 'package:servy_app2/src/features/authentication/screens/forget_password/forget_password_options/forget_password_btn_widget.dart';
import 'package:servy_app2/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModelBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => Container(
        padding: const EdgeInsets.all(tDefultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              tForgetPasswordTitle,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
                fontFamily: 'Montserrat-SemiBold',
              ),
            ),
            const Text(
              tForgetPasswordSubTitle,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 17,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mail_outline_rounded,
              title: "E-Mail",
              subTitle: tRestViaEMail,
              onTap: () {
                Navigator.pop(context);
                Get.to(() => const ForgetPasswordMailScreen());
              },
            ),
            const SizedBox(height: 20.0),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mobile_friendly_rounded,
              title: "Phone No",
              subTitle: tRestViaPhone,
              onTap: () {
                Navigator.pop(context);
                Get.to(() => const OTPScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
