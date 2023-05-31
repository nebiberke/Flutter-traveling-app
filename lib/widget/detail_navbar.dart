import 'package:flutter/material.dart';

class DetailNavbar extends StatelessWidget {
  const DetailNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              RichText(
                text: const TextSpan(
                  text: "\$22",
                  style: TextStyle(
                      color: Color(0xff09B1ED),
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                  children: [
                    TextSpan(
                        text: "\n/Person",
                        style: TextStyle(color: Colors.black54, fontSize: 15)),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 60,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: const Color(0xff09B1ED),
            ),
            child: const Center(
              child: Text(
                "Book Now",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
