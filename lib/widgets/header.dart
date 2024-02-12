import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              fontSize: 30,
              fontWeight: FontWeight.w600,
              height: 1,
              color: const Color(0xFF000000)),
        ),
      ),
    );
  }
}
