import 'package:flutter/material.dart';

import 'header.dart';
import 'hero_content.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    double height;

    if (width < 600) {
      height = 650;
    } else if (width < 1000) {
      height = 700;
    } else {
      height = 780;
    }

    return SizedBox(
      width: double.infinity,
      height: height,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/netflix-background-image.jpg',
              fit: BoxFit.cover,
            ),
          ),

          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(0, 0, 0, 0.75),
                    Color.fromRGBO(0, 0, 0, 0.30),
                    Color.fromRGBO(0, 0, 0, 0.60),
                    Color.fromRGBO(0, 0, 0, 0.98),
                  ],
                ),
              ),
            ),
          ),

          const Column(
            children: [
              Header(),

              Expanded(child: HeroContent()),
            ],
          ),
        ],
      ),
    );
  }
}
