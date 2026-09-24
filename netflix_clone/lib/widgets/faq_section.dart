import 'package:flutter/material.dart';
import 'package:netflix_clone/widgets/app_container.dart';
import 'package:netflix_clone/widgets/faq_item.dart';

class FaqSection extends StatefulWidget {
  const FaqSection({super.key});

  @override
  State<FaqSection> createState() => _FaqSectionState();
}

class _FaqSectionState extends State<FaqSection> {
  int? openIndex;

  final questions = [
    'What is Netflix?',
    'How much does Netflix cost?',
    'Where can I watch?',
    'How do I cancel?',
    'What can I watch on Netflix?',
    'Is Netflix good for kids?',
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    bool isMobile = width < 600;

    return AppContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Frequently Asked Questions',
            style: TextStyle(
              color: Colors.white,
              fontSize: isMobile ? 22 : 26,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          for (int i = 0; i < questions.length; i++)
            FaqItem(ques: questions[i], index: i),
        ],
      ),
    );
  }
}
