import 'package:flutter/material.dart';

class TrendingCard extends StatelessWidget {
  final String imagePath;
  final int number;

  const TrendingCard({
    super.key,
    required this.imagePath,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      height: 270,
      child: Stack(
        children: [
          // Movie poster
          Positioned(
            left: 30,
            right: 0,
            top: 0,
            bottom: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(imagePath, fit: BoxFit.cover),
            ),
          ),

          // Ranking number
          Positioned(
            left: 0,
            bottom: 0,
            child: Text(
              '$number',
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.bold,
                height: 0.9,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 4
                  ..color = Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
