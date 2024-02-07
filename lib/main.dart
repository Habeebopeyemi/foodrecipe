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
      body: const Column(
        children: [
          RecipeHeader(headerText: "How to make french toast"),
          RecipeImageSection()
        ],
      ),
    );
  }
}

class RecipeHeader extends StatelessWidget {
  const RecipeHeader({super.key, required this.headerText});
  final String headerText;
  @override
  Widget build(BuildContext context) {
    return Text(
      headerText,
      style: GoogleFonts.roboto(fontSize: 37, fontWeight: FontWeight.w600),
    );
  }
}

class RecipeImageSection extends StatelessWidget {
  const RecipeImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 200,
          height: 200,
          color: Colors.blue,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.red,
        ),
        Container(
          width: 50,
          height: 50,
          color: Colors.green,
        )
      ],
    );
  }
}
