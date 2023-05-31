import 'package:flutter/material.dart';

class LocationCard extends StatelessWidget {
  const LocationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(17),
      ),
      elevation: 0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            // LOCATION IMAGE
            ClipRRect(
              borderRadius: BorderRadius.circular(17),
              child: Image.asset("assets/images/location.png", width: 80),
            ),
            const SizedBox(
              width: 20,
            ),
            // YOUR LOCATİON
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Your location",
                  style: TextStyle(
                    color: Color(0xff09B1ED),
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Kintamani river, Kecak...",
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
