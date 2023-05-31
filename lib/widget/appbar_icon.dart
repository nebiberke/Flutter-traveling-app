import 'package:flutter/material.dart';

class AppBarIcon extends StatelessWidget {
  final IconData icon;

  const AppBarIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey[300] as Color),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          color: const Color.fromARGB(90, 0, 0, 0),
          size: 34,
        ),
      ),
    );
  }
}
