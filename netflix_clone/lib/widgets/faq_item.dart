import 'package:flutter/material.dart';

class FaqItem extends StatefulWidget {
  final String ques;
  final int index;

  const FaqItem({super.key, required this.ques, required this.index});

  @override
  State<FaqItem> createState() => _FaqItemState();
}

class _FaqItemState extends State<FaqItem> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: Column(
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isOpen = !isOpen;
                });
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 22,
                ),
                color: const Color(0xFF2D2D2D),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.ques,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),

                    Icon(
                      isOpen ? Icons.close : Icons.add,
                      color: Colors.white,
                      size: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),

          if (isOpen)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(25, 20, 25, 25),
              color: const Color(0xFF2D2D2D),
              child: const Text(
                'This is sample information for the FAQ section. '
                'You can add the actual answer here.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  height: 1.5,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
