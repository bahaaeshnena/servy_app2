import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    super.key,
    this.imageColor,
    this.imageHeight = 0.2,
    this.heighBetween,
    required this.image,
    required this.title,
    required this.subTitle,
    this.textAlign,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  });

  final Color? imageColor;
  final double imageHeight;
  final double? heighBetween;
  final String image, title, subTitle;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Image(
          image: AssetImage(image),
          color: imageColor,
          height: size.height * imageHeight,
        ),
        SizedBox(
          height: heighBetween,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w900,
            fontFamily: 'Montserrat-SemiBold',
          ),
        ),
        Text(
          subTitle,
          textAlign: textAlign,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 17,
          ),
        )
      ],
    );
  }
}
