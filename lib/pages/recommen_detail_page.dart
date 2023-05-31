import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:travelling_app/widget/detail_navbar.dart';
import 'package:travelling_app/widget/icon_button.dart';

class RecommenDetailPage extends StatelessWidget {
  const RecommenDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: const DetailNavbar(),
      body: ListView(
        children: [
          Stack(
            children: [
              // IMAGE
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
                child: SizedBox(
                  width: double.maxFinite,
                  height: size.height / 2,
                  child: Image.asset(
                    "assets/images/place5.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // ICON BUTTONS
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButtons(
                        icon: Icons.arrow_back_ios_rounded,
                        press: () {
                          Navigator.pop(context);
                        },
                        size: 30,
                      ),
                      IconButtons(
                        icon: Icons.bookmark,
                        press: () {},
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "St. Regis Bora Bora",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 24,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          "4.4",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // LOCATİON
                    Row(
                      children: const [
                        Icon(
                          Icons.location_on_rounded,
                          color: Color(0xff09B1ED),
                          size: 25,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "French, Polynesia",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    // CİRCLE AVATAR
                    SizedBox(
                      height: 40,
                      width: 92,
                      child: Stack(
                        children: const [
                          CircleProfile(
                            imagePath: 'assets/images/place3.jpg',
                          ),
                          Positioned(
                            left: 20,
                            child: CircleProfile(
                              imagePath: "assets/images/place4.jpg",
                            ),
                          ),
                          Positioned(
                            left: 40,
                            child: CircleProfile(
                              imagePath: "assets/images/place5.jpg",
                            ),
                          ),
                          Positioned(
                            left: 60,
                            child: CircleProfile(
                                imagePath: "assets/images/place6.jpg"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                RichText(
                  maxLines: 3,
                  text: const TextSpan(
                    style: TextStyle(color: Colors.black38, fontSize: 18),
                    text:
                        "Bora Bora is an island in the Leeward group of the Community Islands, French Polynesia, a French overseas... ",
                    children: [
                      TextSpan(
                          text: "Read more",
                          style: TextStyle(color: Color(0xff09B1ED)))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: const [
                    Text(
                      "More images",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const MoreImages(
                      imagePath: "assets/images/place3.jpg",
                    ),
                    const Spacer(),
                    const MoreImages(
                      imagePath: "assets/images/place4.jpg",
                    ),
                    const Spacer(),
                    const MoreImages(
                      imagePath: "assets/images/place5.jpg",
                    ),
                    const Spacer(),
                    // +10 images
                    Stack(
                      children: [
                        SizedBox(
                          width: 70,
                          height: 90,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: ImageFiltered(
                              imageFilter:
                                  ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                              child: Image.asset(
                                "assets/images/place2.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 90,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.black.withOpacity(0.3),
                          ),
                        ),
                        const Positioned(
                          left: 18,
                          top: 33,
                          child: SizedBox(
                              child: Text(
                            "+10",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white),
                          )),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MoreImages extends StatelessWidget {
  final String imagePath;
  const MoreImages({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 90,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          )),
    );
  }
}

class CircleProfile extends StatelessWidget {
  final String imagePath;

  const CircleProfile({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 2)),
      child: ClipOval(
        child: Image.asset(
          imagePath,
          height: 30,
          width: 30,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
