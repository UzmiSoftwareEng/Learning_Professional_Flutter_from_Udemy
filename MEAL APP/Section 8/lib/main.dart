import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_screen/screens/categories.dart';

final theme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(130, 150, 90, 30),
  ),
   textTheme: GoogleFonts.latoTextTheme(),
  );

void main() {
  runApp(MyApp());

}

  class MyApp extends StatelessWidget{
    const MyApp({super.key});

    @override
  Widget build(BuildContext context){
      return MaterialApp(
      theme: theme,
      home: CategoriesScreen(),
      );
    }
  }

