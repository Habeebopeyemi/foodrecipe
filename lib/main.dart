import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const RecipeHomePage(),
      debugShowCheckedModeBanner: false,
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
      body: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            RecipeHeader(headerText: "How to make french toast"),
            RecipeImageSection(
              baseImage: 'assets/frenchtoast.png',
              upperImage: 'assets/playbutton.png',
            ),
            ReviewSection(),
            FollowSection(
              profilePicture: 'assets/user.png',
              username: "Roberta Anny",
              location: "Bali, Indonesia",
              locationImage: 'assets/Location.png',
            ),
            Expanded(child: IngredientsSection()),
          ],
        ),
      ),
    );
  }
}

class RecipeHeader extends StatelessWidget {
  const RecipeHeader({super.key, required this.headerText});
  final String headerText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Center(
        child: Text(
          headerText,
          style: GoogleFonts.poppins(
              fontSize: 30, fontWeight: FontWeight.w600, height: 1),
        ),
      ),
    );
  }
}

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

class ReviewSection extends StatelessWidget {
  const ReviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        children: [
          const Icon(Icons.star, color: Colors.yellow),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Text(
              "4.5",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
          ),
          Text(
            "(300 Reviews)",
            style: GoogleFonts.poppins(color: Colors.black45),
          )
        ],
      ),
    );
  }
}

class FollowSection extends StatelessWidget {
  const FollowSection(
      {super.key,
      required this.profilePicture,
      required this.username,
      required this.location,
      required this.locationImage});
  final String profilePicture;
  final String username;
  final String location;
  final String locationImage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 15.0),
            child: Row(
              children: [
                Image.asset(profilePicture),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    children: [
                      Text(
                        username,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 4.0),
                            child: Image.asset(locationImage),
                          ),
                          Text(
                            location,
                            style: GoogleFonts.poppins(color: Colors.black45),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
                backgroundColor: Colors.red[600],
                padding: const EdgeInsets.symmetric(horizontal: 16),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            child: Text("Follow",
                style: GoogleFonts.poppins(
                    color: Colors.white, fontWeight: FontWeight.w600)))
      ],
    );
  }
}

class IngredientsSection extends StatelessWidget {
  const IngredientsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 10.0),
              child: Text(
                "Ingredients",
                style: GoogleFonts.roboto(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const Spacer(),
            Text(
              "5 items",
              style: GoogleFonts.roboto(color: Colors.black45),
            )
          ],
        ),
        Expanded(
            child: ListView.builder(
                itemCount: ingredients.length,
                itemBuilder: (context, index) {
                  final ingredient = ingredients[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: IngredientCards(
                        ingredientImage: ingredient.ingredientImage,
                        ingredientName: ingredient.ingredientName,
                        ingredientWeight: ingredient.ingredientWeight),
                  );
                }))
      ],
    );
  }
}

class IngredientCards extends StatelessWidget {
  const IngredientCards(
      {super.key,
      required this.ingredientImage,
      required this.ingredientName,
      required this.ingredientWeight});
  final String ingredientImage;
  final String ingredientName;
  final String ingredientWeight;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: Colors.black12),
      child: Row(
        children: [
          Row(
            children: [
              Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white),
                  child: Image.asset(ingredientImage)),
              const SizedBox(
                width: 15.0,
              ),
              Text(
                ingredientName,
                style: GoogleFonts.roboto(
                    color: Colors.black54,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          const Spacer(),
          Text(
            ingredientWeight,
            style: GoogleFonts.roboto(color: Colors.black54, fontSize: 15),
          )
        ],
      ),
    );
  }
}
