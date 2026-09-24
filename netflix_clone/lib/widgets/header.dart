import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/language_button.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    bool isMobile = width < 600;

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: isMobile ? 20 : 55,
          vertical: 20,
        ),
        child: Row(
          children: [
            // Logo
            Image.asset(
              'assets/images/logo.png',
              width: isMobile ? 100 : 150,
              height: 45,
              fit: BoxFit.contain,
            ),

            const Spacer(),
            if (!isMobile) ...[Languagebutton(), const SizedBox(width: 12)],
            _signInButton(),
            const SizedBox(width: 10),
            _signUpButton(),
          ],
        ),
      ),
    );
  }

  Widget _signInButton() {
    return SizedBox(
      height: 38,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFE50914),
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 18),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        child: const Text(
          'Sign In',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  Widget _signUpButton() {
    return SizedBox(
      height: 38,
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.white,
          side: const BorderSide(color: Colors.white),
          padding: const EdgeInsets.symmetric(horizontal: 18),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        child: const Text(
          'Sign Up',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
