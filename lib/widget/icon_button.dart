import 'package:flutter/material.dart';

class IconButtons extends StatelessWidget {
  final double size;
  final IconData icon;
  final void Function() press;

  const IconButtons({
    super.key,
    required this.icon,
    required this.press,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        press();
      },
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 0.3),
          color: Colors.blueGrey.withOpacity(0.4),
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: Colors.white,
          size: size,
        ),
      ),
    );
  }
}
