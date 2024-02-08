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

class RecipeHomePage extends StatelessWidget {
  const RecipeHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text(
        //   "foodrecipe",
        //   style: TextStyle(
        //     color: Colors.black87,
        //   ),
        // ),
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
            ReviewSection()
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
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Center(
        child: Text(
          headerText,
          style: GoogleFonts.roboto(
              fontSize: 37, fontWeight: FontWeight.w600, height: 1),
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
                  fontWeight: FontWeight.w900,
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
