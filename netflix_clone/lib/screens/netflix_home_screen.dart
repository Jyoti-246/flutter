import 'package:flutter/material.dart';

import '../widgets/hero_section.dart';
import '../widgets/trending_section.dart';
import '../widgets/reason_section.dart';
import '../widgets/footer.dart';
import '../widgets/faq_section.dart';

class NetflixHomeScreen extends StatelessWidget {
  const NetflixHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HeroSection(),

            SizedBox(height: 40),

            TrendingSection(),

            SizedBox(height: 50),

            ReasonSection(),

            SizedBox(height: 60),

            FaqSection(),

            SizedBox(height: 50),

            Footer(),
          ],
        ),
      ),
    );
  }
}
