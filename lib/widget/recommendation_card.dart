import 'package:flutter/material.dart';
import 'package:travelling_app/models/recommendation_model.dart';
import 'package:travelling_app/pages/recommen_detail_page.dart';
import 'package:travelling_app/widget/icon_button.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        height: 280,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(
                  width: 10,
                ),
            itemCount: 4,
            itemBuilder: (context, index) {
              return SizedBox(
                width: 240,
                child: Card(
                  color: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(17),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RecommenDetailPage(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(children: [
                        // IMAGE AND SAVE BUTTON
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(17),
                              child: Image.asset(
                                recomList[index].imagePath,
                                width: double.maxFinite,
                                height: 170,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: IconButtons(icon: Icons.bookmark, press: () {}, size: 23,)
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        // TRAVEL NAME AND LOCATİON
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              recomList[index].travelName,
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 16,
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                Text(recomList[index].score),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on_rounded,
                              color: Color(0xff09B1ED),
                              size: 18,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(recomList[index].location),
                          ],
                        ),
                      ]),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
