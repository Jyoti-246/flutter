import 'package:flutter/material.dart';

class QuoteScreen extends StatefulWidget {
  const QuoteScreen({super.key});
  @override
  State<QuoteScreen> createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Random Quote Generator',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Push yourself, because no one else is going to do it for you.",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "-Unknown",
            style: TextStyle(fontSize: 18, color: Colors.grey[300]),
          ),
          // button()
        ],
      ),
    );
  }
}
