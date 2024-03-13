import 'package:flutter/material.dart';

class PreviewTravelsSection extends StatelessWidget {
  const PreviewTravelsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25).copyWith(top: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Preview",
                style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: const Color(0xFFF6F8FA),
                ),
                child: const Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "4,8",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 110,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            scrollDirection: Axis.horizontal,
            itemCount: 15,
            itemBuilder: (context, index) => Container(
              width: 90,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/preview${index % 4 + 1}.png',
                  ),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(9),
              ),
            ),
            separatorBuilder: (context, index) => const SizedBox(width: 12),
          ),
        ),
      ],
    );
  }
}
