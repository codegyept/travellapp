import 'package:flutter/material.dart';

class PrivacySection extends StatelessWidget {
  final String title;
  final String content;

  const PrivacySection({
    required this.title,
    required this.content,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            margin: const EdgeInsets.symmetric(vertical: 20),
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFF1C9FE2),
              borderRadius: BorderRadius.circular(9),
            ),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Text(
            content,
            style: const TextStyle(
              color: Color(0xFF8D94A2),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
