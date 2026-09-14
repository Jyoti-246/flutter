import "package:flutter/material.dart";
import 'package:dice_app/screens/dice_page.dart';

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice App',
      debugShowCheckedModeBanner: false,
      home: const DicePage(),
    );
  }
}
