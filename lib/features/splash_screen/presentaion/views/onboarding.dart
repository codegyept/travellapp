import 'package:flutter/material.dart';

class Onbording extends StatefulWidget {
  const Onbording({super.key});

  @override
  State<Onbording> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
            itemCount: 4,
            itemBuilder: (_, i) {
              return Column(children: [
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/img1.png',
                      ),
                    ),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 70, 31),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                            child: const Text(
                              'Discover Incredible',
                              style: TextStyle(
                                fontFamily: "Switzer",
                                color: Colors.white70,
                                fontSize: 32,
                                fontWeight: FontWeight.w700,
                                height: 1.2575,
                              ),
                            ),
                          ),
                          const Text(
                            ' Experiences Worldwide',
                            style: TextStyle(
                              fontFamily: "Switzer",
                              color: Colors.white70,
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                              height: 1.2575,
                            ),
                          ),
                        ]))
              ]);
            }));
  }
}
