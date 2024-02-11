import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../pages/home.dart';

class IngredientsSection extends StatelessWidget {
  const IngredientsSection({super.key, required this.ingredients});
  final List<Ingredient> ingredients;
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
