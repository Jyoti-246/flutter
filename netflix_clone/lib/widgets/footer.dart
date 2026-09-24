import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/app_container.dart';
import 'package:netflix_clone/widgets/language_button.dart';

import 'email_signup.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 600;

        return AppContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'Ready to watch? Enter your email to create or restart your membership..',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),

              const SizedBox(height: 18),
              const Center(child: EmailSignup()),
              const SizedBox(height: 60),
              Text(
                "Questions? Call 000-800-919-1743",
                style: TextStyle(
                  color: Color.fromARGB(255, 183, 182, 182),
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 40),
              _footerLinks(isMobile),
              const SizedBox(height: 40),
              Languagebutton(),
              const SizedBox(height: 25),
              const Text(
                'Netflix India',
                style: TextStyle(
                  color: Color.fromARGB(255, 183, 182, 182),
                  fontSize: 14,
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "This page is protected by Google reCAPTCHA to ensure you're not a bot.",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              const SizedBox(height: 50),
            ],
          ),
        );
      },
    );
  }

  Widget _footerLinks(bool isMobile) {
    final links = [
      'Terms of Service',
      'Feedback',
      'Help Centre',
      'Privacy',
      'Cookie Preferences',
      'Legal Notices',
      'Only on Netflix',
      'Speed Test',
    ];

    if (isMobile) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: links
            .map(
              (link) => Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: _footerLink(link),
              ),
            )
            .toList(),
      );
    }

    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisSpacing: 20,
      childAspectRatio: 11,
      children: links.map((link) => _footerLink(link)).toList(),
    );
  }

  Widget _footerLink(String text) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 15,
          decoration: TextDecoration.underline,
          decorationColor: Colors.grey,
          decorationThickness: 2,
        ),
      ),
    );
  }
}
