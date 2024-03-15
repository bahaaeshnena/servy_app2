import 'package:flutter/material.dart';
import 'package:servy_app2/src/constants/image_string.dart';
import 'package:servy_app2/src/constants/sizes.dart';
import 'package:servy_app2/src/constants/text.dart';
import 'package:servy_app2/src/features/authentication/screens/login/form_header_widget.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefultSize),
          child: Column(
            children: [
              const SizedBox(
                height: tDefultSize * 4,
              ),
              const FormHeaderWidget(
                image: tForgetPasswordImage,
                title: tForgetPasswordTitle,
                subTitle: tForgetMailSubTitle,
                crossAxisAlignment: CrossAxisAlignment.center,
                heighBetween: 30.0,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        label: Text("E-Mail"),
                        hintText: "E-Mail",
                        prefixIcon: Icon(Icons.mail_outline_rounded),
                        border: OutlineInputBorder()),
                  ),
                  const SizedBox(height: 20.0),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text("Next"))),
                ],
              ))
            ],
          ),
        ),
      )),
    );
  }
}
