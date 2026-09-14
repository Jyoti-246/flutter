import 'package:flutter/material.dart';
import 'package:random_quote_generator/screens/quote_screen.dart';

class QuoteApp extends StatelessWidget {
  const QuoteApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random Quote Generator',
      debugShowCheckedModeBanner: false,
      home: const QuoteScreen(),
    );
  }
}
