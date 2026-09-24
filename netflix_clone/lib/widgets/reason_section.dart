import 'package:flutter/material.dart';

import 'reason_card.dart';

class ReasonSection extends StatelessWidget {
  const ReasonSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    bool isMobile = width <= 600;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 20 : 55),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'More reasons to join',
            style: TextStyle(
              color: Colors.white,
              fontSize: isMobile ? 22 : 26,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          if (isMobile)
            Column(
              children: [
                _card(
                  'Enjoy on your TV',
                  'Watch on Smart TVs, PlayStation, Xbox and more.',
                  Icons.tv,
                ),

                const SizedBox(height: 15),

                _card(
                  'Download your shows',
                  'Save your favorites and watch them offline.',
                  Icons.download,
                ),

                const SizedBox(height: 15),

                _card(
                  'Watch everywhere',
                  'Stream on your phone, tablet, laptop and TV.',
                  Icons.devices,
                ),

                const SizedBox(height: 15),

                _card(
                  'Create profiles',
                  'Create profiles for different members of your family.',
                  Icons.person,
                ),
              ],
            )
          else
            Wrap(
              spacing: 18,
              runSpacing: 18,
              children: [
                _card(
                  'Enjoy on your TV',
                  'Watch on Smart TVs, PlayStation, Xbox and more.',
                  Icons.tv,
                ),

                _card(
                  'Download your shows',
                  'Save your favorites and watch them offline.',
                  Icons.download,
                ),

                _card(
                  'Watch everywhere',
                  'Stream on your phone, tablet, laptop and TV.',
                  Icons.devices,
                ),

                _card(
                  'Create profiles',
                  'Create profiles for different members of your family.',
                  Icons.person,
                ),
              ],
            ),
        ],
      ),
    );
  }

  Widget _card(String title, String description, IconData icon) {
    return ReasonCard(title: title, description: description, icon: icon);
  }
}
