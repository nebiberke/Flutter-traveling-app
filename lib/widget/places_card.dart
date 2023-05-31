import 'package:flutter/material.dart';
import 'package:travelling_app/models/places_card_model.dart';

class PlacesCard extends StatelessWidget {
  const PlacesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: placesList.length,
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(17),
            ),
            child: Row(
              children: [
                Image.asset(placesList[index].imagePath, width: 27),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  placesList[index].placeName,
                  style: const TextStyle(
                    color: Colors.black38,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
