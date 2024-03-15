import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:servy_app2/src/constants/sizes.dart';
import 'package:servy_app2/src/constants/text.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(tDefultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              tOtpTitle,
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat-SemiBold',
              ),
            ),
            const Text(
              tOtpSubTitle,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 17,
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            const Text(
              "$tOtpMessage Support@codingwitht.com",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 20.0),
            OtpTextField(
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              fieldWidth: 50,
              onSubmit: (code) {
                // ignore: avoid_print
                print("OTP is => $code");
              },
            ),
            const SizedBox(height: 20.0),
            SizedBox(
                width: double.infinity,
                child:
                    ElevatedButton(onPressed: () {}, child: const Text("Next")))
          ],
        ),
      ),
    );
  }
}
