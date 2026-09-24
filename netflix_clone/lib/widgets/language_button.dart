import 'package:flutter/material.dart';

class Languagebutton extends StatelessWidget {
  const Languagebutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(4),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.language, color: Colors.white, size: 17),
          SizedBox(width: 7),
          Text('English', style: TextStyle(color: Colors.white, fontSize: 14)),
          SizedBox(width: 5),
          Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 18),
        ],
      ),
    );
  }
}
