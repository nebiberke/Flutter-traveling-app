import 'package:flutter/material.dart';
import 'package:travelling_app/widget/appbar_icon.dart';
import 'package:travelling_app/widget/custom_navbar.dart';
import 'package:travelling_app/widget/location_card.dart';
import 'package:travelling_app/widget/nearby_card.dart';
import 'package:travelling_app/widget/places_card.dart';
import 'package:travelling_app/widget/recommendation_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomNavBar(),
      backgroundColor: const Color.fromARGB(255, 245, 244, 244),
      appBar: AppBar(
        centerTitle: false,
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Good Morning,",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 19,
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                "Bagus pambudi",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.black54,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        actions: const [
          AppBarIcon(
            icon: Icons.search,
          ),
          SizedBox(
            width: 15,
          ),
          AppBarIcon(
            icon: Icons.notifications_none_rounded,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          // LOCATION CARD
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: LocationCard(),
          ),
          // PLACESCARD
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: PlacesCard(),
          ),
          // RECOMMENDATİON
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text(
                  "Recommendation",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 19,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "View All",
                    style: TextStyle(
                      color: Color(0xff09B1ED),
                    ),
                  ),
                )
              ],
            ),
          ),
          const RecommendationCard(),
          const SizedBox(
            height: 15,
          ),
          // NEARBY FROM YOU
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text(
                  "Nearby from you",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 19,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "View All",
                    style: TextStyle(
                      color: Color(0xff09B1ED),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const NearbyCard(),
        ],
      ),
    );
  }
}
