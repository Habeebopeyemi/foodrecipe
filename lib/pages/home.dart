import 'package:flutter/material.dart';
import '../widgets/followingsection.dart';
import '../widgets/header.dart';
import '../widgets/imagesection.dart';
import '../widgets/ingredientssection.dart';
import '../widgets/reviewsection.dart';

class RecipeHomePage extends StatelessWidget {
  const RecipeHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4.5,
        backgroundColor: Colors.white70,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black54,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const RecipeHeader(headerText: "How to make french toast"),
            const RecipeImageSection(
              baseImage: 'assets/frenchtoast.png',
              upperImage: 'assets/playbutton.png',
            ),
            const ReviewSection(),
            const FollowSection(
              profilePicture: 'assets/user.png',
              username: "Roberta Anny",
              location: "Bali, Indonesia",
              locationImage: 'assets/Location.png',
            ),
            Expanded(
                child: IngredientsSection(
              ingredients: ingredients,
            )),
          ],
        ),
      ),
    );
  }
}

class Ingredient {
  final String ingredientImage;
  final String ingredientName;
  final String ingredientWeight;

  Ingredient(
      {required this.ingredientImage,
      required this.ingredientName,
      required this.ingredientWeight});
}

final List<Ingredient> ingredients = [
  Ingredient(
      ingredientImage: 'assets/bread.png',
      ingredientName: "Bread",
      ingredientWeight: "200g"),
  Ingredient(
      ingredientImage: 'assets/eggs.png',
      ingredientName: "Eggs",
      ingredientWeight: "200g"),
  Ingredient(
      ingredientImage: 'assets/bread.png',
      ingredientName: "Milk",
      ingredientWeight: "200g"),
  Ingredient(
      ingredientImage: 'assets/eggs.png',
      ingredientName: "Lipton",
      ingredientWeight: "200g"),
  Ingredient(
      ingredientImage: 'assets/bread.png',
      ingredientName: "Coffee",
      ingredientWeight: "200g"),
];
