import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:servy_app2/src/constants/sizes.dart';
import 'package:servy_app2/src/features/authentication/controllers/signup_controller.dart';
import 'package:servy_app2/src/utils/theme/validators/validation.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    // final _formKey = GlobalKey<FormState>();

    return Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Form(
        key: controller.signupFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              validator: (value) =>
                  TValidator.volidateEmptyText('FullName', value),
              controller: controller.fullName,
              // keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                label: Text("FullName"),
                prefixIcon: Icon(
                  Icons.person_outline_rounded,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              validator: (value) => TValidator.validateEmail(value),
              controller: controller.email,
              // keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                label: Text("Email"),
                prefixIcon: Icon(
                  Icons.email_outlined,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: controller.phoneNo,
              validator: (value) => TValidator.validatPhoneNumber(value),
              // keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                label: Text("Phone"),
                prefixIcon: Icon(
                  Icons.phone,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              validator: (value) => TValidator.validatePassword(value),
              controller: controller.password,
              // keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: const InputDecoration(
                label: Text("Password"),
                prefixIcon: Icon(
                  Icons.fingerprint,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              // validator: (value) => TValidator.validatePassword(value),
              // controller: controller.password,
              obscureText: true,
              decoration: const InputDecoration(
                label: Text("Select Skills"),
                prefixIcon: Icon(
                  Icons.list,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            // AppTextField(
            //   dataList: [
            //     SelectedListItem(name: "Programming"),
            //     SelectedListItem(name: "Website Programmer"),
            //     SelectedListItem(name: "Android Application Programmer "),
            //     SelectedListItem(name: "IOS Application Programmer"),
            //     SelectedListItem(name: "Programming Games"),
            //     SelectedListItem(name: "Logo Design"),
            //     SelectedListItem(name: "Video Design"),
            //     SelectedListItem(name: "UI & UX Design"),
            //     SelectedListItem(name: "Translator"),
            //     SelectedListItem(name: "PowerPoint Design"),
            //     SelectedListItem(name: "Games Design"),
            //     SelectedListItem(name: "Design Decorations"),
            //     SelectedListItem(name: "Paint"),
            //     SelectedListItem(name: "Smith"),
            //     SelectedListItem(name: "Welding"),
            //     SelectedListItem(name: "Maintenance"),
            //   ],
            //   // textEditingController: work,
            //   title: "Select Work",
            //   hint: 'Work',
            //   isWorkSelected: true,
            // ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // controller.Signip();
                  if (controller.signupFormKey.currentState!.validate()) {
                    SignUpController.instance.registerUser(
                        controller.email.text.trim(),
                        controller.password.text.trim());
                  }
                },
                child: Text("SignUp".toUpperCase()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
