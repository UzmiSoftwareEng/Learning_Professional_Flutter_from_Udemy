import 'package:flutter/material.dart';
import 'package:expenses_tracker/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(
    seedColor:  Color.fromARGB(200, 96, 40, 150),
);

/*var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: Color.fromARGB(255, 150, 60, 80),
);*/

void main (){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      /*themeMode: ThemeMode.dark,
     darkTheme: ThemeData.dark().copyWith(
       useMaterial3: true,
       colorScheme: kDarkColorScheme,
       cardTheme: const CardThemeData().copyWith(
         color: kDarkColorScheme.secondaryContainer,
         margin: const EdgeInsets.symmetric(
           horizontal: 16,
           vertical: 8,
         ),
       ),
       elevatedButtonTheme: ElevatedButtonThemeData(
         style: ElevatedButton.styleFrom(
           backgroundColor: kDarkColorScheme.primaryContainer,
           foregroundColor: kDarkColorScheme.onPrimaryContainer
         ),
       ),
     ),*/
      theme: ThemeData().copyWith(
          useMaterial3: true,
          colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        ),
        cardTheme: const CardThemeData().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 16,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kColorScheme.primaryContainer,
            ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
          titleLarge: TextStyle(fontWeight: FontWeight.bold,
            color: kColorScheme.onSecondaryContainer,
            fontSize: 18,

          ),
        ),
      ),
     // themeMode: ThemeData.system, // default
      home: Expenses(),
      ),
  );
}