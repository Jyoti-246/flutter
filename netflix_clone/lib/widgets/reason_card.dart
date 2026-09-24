import 'package:flutter/material.dart';

class ReasonCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  const ReasonCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final isMobile = width <= 600;

    return Container(
      width: isMobile ? double.infinity : 300,
      height: 220,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xff1f1b3d),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),

          Text(
            description,
            style: const TextStyle(color: Colors.grey, fontSize: 16),
          ),

          const Spacer(),

          Align(
            alignment: Alignment.bottomRight,
            child: Icon(icon, color: Colors.red, size: 40),
          ),
        ],
      ),
    );
  }
}
