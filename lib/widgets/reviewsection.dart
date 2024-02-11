import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
