import 'package:flutter/material.dart';

import 'email_signup.dart';

class HeroContent extends StatelessWidget {
  const HeroContent({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    bool isMobile = width < 600;

    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: isMobile ? 20 : 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Unlimited entertainment,\nall in one place.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: isMobile ? 34 : 58,
                fontWeight: FontWeight.bold,
                height: 1.1,
              ),
            ),

            const SizedBox(height: 20),

            Text(
              'Watch your favorite movies and shows anytime, anywhere.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: isMobile ? 16 : 20,
              ),
            ),

            const SizedBox(height: 25),

            Text(
              'Ready to watch? Enter your email to get started.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: isMobile ? 14 : 16,
              ),
            ),

            const SizedBox(height: 18),

            const EmailSignup(),
          ],
        ),
      ),
    );
  }
}
