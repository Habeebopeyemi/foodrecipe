import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: const Color(0xFF000000)),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 4.0),
                            child: Image.asset(locationImage),
                          ),
                          Text(
                            location,
                            style: GoogleFonts.poppins(
                                color: const Color(0xFFA9A9A9)),
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
                backgroundColor: const Color(0xFFE23E3E),
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
