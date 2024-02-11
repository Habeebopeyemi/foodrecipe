import 'package:flutter/material.dart';

class RecipeImageSection extends StatelessWidget {
  const RecipeImageSection(
      {super.key, required this.baseImage, required this.upperImage});
  final String baseImage;
  final String upperImage;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.asset(
            baseImage,
            width: 400,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        Image.asset(
          upperImage,
          width: 50,
          fit: BoxFit.cover,
        )
      ],
    );
  }
}
