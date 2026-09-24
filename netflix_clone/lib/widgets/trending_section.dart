import 'package:flutter/material.dart';

import 'app_container.dart';
import 'trending_card.dart';

class TrendingSection extends StatelessWidget {
  const TrendingSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    bool isMobile = width < 600;

    final movies = [
      'assets/images/movie1.webp',
      'assets/images/movie2.webp',
      'assets/images/movie3.webp',
      'assets/images/movie4.webp',
      'assets/images/movie5.webp',
      'assets/images/movie6.webp',
      'assets/images/movie7.webp',
      'assets/images/movie8.webp',
      'assets/images/movie9.webp',
    ];

    return AppContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Trending Now',
            style: TextStyle(
              color: Colors.white,
              fontSize: isMobile ? 22 : 26,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          SizedBox(
            height: 285,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: movies.length,
              separatorBuilder: (context, index) {
                return const SizedBox(width: 24);
              },
              itemBuilder: (context, index) {
                return TrendingCard(
                  imagePath: movies[index],
                  number: index + 1,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
