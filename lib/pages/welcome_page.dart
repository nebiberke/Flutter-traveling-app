import 'package:flutter/material.dart';
import 'package:travelling_app/pages/home_page.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        physics: currentPage == 0
            ? const PageScrollPhysics()
            : const NeverScrollableScrollPhysics(),
        onPageChanged: (value) {
          setState(() {
            currentPage = value;
          });
        },
        children: [
          // WELCOME PAGE CONTENTS
          Column(
            children: [
              // images
              SizedBox(
                width: double.maxFinite,
                height: size.height / 1.7,
                child: Image.asset(
                  "assets/images/sky.png",
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              // head and button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    const Text(
                      "Explore your journey \nonly with us",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      "All your vacations destinations are \nhere, enjoy your holiday.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 65,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 20),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color(0xff09B1ED),
                      ),
                      child: Stack(
                        children: const [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Get started",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Icon(
                              Icons.arrow_forward_outlined,
                              color: Colors.white,
                              size: 23,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // HOMEPAGE
          const HomePage(),
        ],
      ),
    );
  }
}
