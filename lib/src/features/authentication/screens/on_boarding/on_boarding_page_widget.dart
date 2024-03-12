import 'package:flutter/material.dart';

import 'package:servy_app2/src/features/authentication/models/model_on_boarding.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(12),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(model.image, height: size.height * 0.4),
          Column(
            children: [
              Text(
                model.title,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Poppins',
                ),
              ),
              Text(
                model.subTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.black38,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Text(
            model.counterText,
            style: const TextStyle(fontFamily: 'Outfit', fontSize: 25),
          ),
          const SizedBox(
            height: 80,
          )
        ],
      ),
    );
  }
}
