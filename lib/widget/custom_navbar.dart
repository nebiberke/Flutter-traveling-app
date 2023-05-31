import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      color: Colors.white,
      width: double.maxFinite,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            width: 50,
            decoration: const BoxDecoration(
                color: Color(0xff09B1ED), shape: BoxShape.circle),
            child: const Icon(
              Icons.home_filled,
              color: Colors.white,
              size: 30,
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(8),
            width: 50,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: const Icon(
              Icons.bookmark_outline_outlined,
              color: Colors.black54,
              size: 30,
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(8),
            width: 50,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: const Icon(
              Icons.airplane_ticket_outlined,
              color: Colors.black54,
              size: 30,
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(8),
            width: 50,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: const Icon(
              Icons.person_outline_sharp,
              color: Colors.black54,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
