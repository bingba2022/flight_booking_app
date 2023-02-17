import 'package:airline/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SearchScreen(),
      theme: ThemeData(fontFamily: GoogleFonts.ubuntu().fontFamily),
    );
  }
}
