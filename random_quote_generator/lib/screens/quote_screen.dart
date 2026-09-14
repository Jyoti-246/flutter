import 'package:flutter/material.dart';

import 'dart:math';

class QuoteScreen extends StatefulWidget {
  const QuoteScreen({super.key});
  @override
  State<QuoteScreen> createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  int currIndex = 0;
  final List<Map<String, String>> _quotes = [
    {
      "quote": "The only way to do great work is to love what you do.",
      "author": "Steve Jobs",
    },
    {
      "quote": "Believe you can and you're halfway there.",
      "author": "Theodore Roosevelt",
    },
    {
      "quote": "It always seems impossible until it's done.",
      "author": "Nelson Mandela",
    },
    {
      "quote": "Success is not final, failure is not fatal.",
      "author": "Winston Churchill",
    },
    {"quote": "Dream big and dare to fail.", "author": "Norman Vincent Peale"},
    {
      "quote": "Do something today that your future self will thank you for.",
      "author": "Sean Patrick Flanery",
    },
    {
      "quote":
          "Great things are done by a series of small things brought together.",
      "author": "Vincent van Gogh",
    },
    {
      "quote": "The future depends on what you do today.",
      "author": "Mahatma Gandhi",
    },
    {
      "quote": "Don't watch the clock; do what it does. Keep going.",
      "author": "Sam Levenson",
    },
    {
      "quote": "Hard work beats talent when talent doesn't work hard.",
      "author": "Tim Notke",
    },
    {"quote": "Stay hungry, stay foolish.", "author": "Steve Jobs"},
    {"quote": "Everything you can imagine is real.", "author": "Pablo Picasso"},
    {
      "quote": "The secret of getting ahead is getting started.",
      "author": "Mark Twain",
    },
    {
      "quote":
          "It does not matter how slowly you go as long as you do not stop.",
      "author": "Confucius",
    },
    {
      "quote": "You miss 100% of the shots you don't take.",
      "author": "Wayne Gretzky",
    },
  ];

  var random = Random();

  void _inspireMe() {
    setState(() {
      currIndex = random.nextInt(_quotes.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Random Quote Generator',
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '"${_quotes[currIndex]['quote']!}"',
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "- ${_quotes[currIndex]['author']!}",
                style: TextStyle(fontSize: 18, color: Colors.grey[300]),
              ),

              const SizedBox(height: 40),
              // button()
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
                onPressed: _inspireMe,
                child: const Text("Inspire me", style: TextStyle(fontSize: 24)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
