import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/home_screen.dart';

void main(){
  runApp(Calculator());

}

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator",
      home: const HomeScreen(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,

        ),
        inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green)
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green)
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red)
            ),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red)
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 12,vertical: 15)
        ),
      ),
    );
  }
}
