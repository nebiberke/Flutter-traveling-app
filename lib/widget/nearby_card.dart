import 'package:flutter/material.dart';

class NearbyCard extends StatelessWidget {
  const NearbyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
      child: Column(
        children: List.generate(4, (index) {
          return Card(
            elevation: 0,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(17),
            ),
            child: SizedBox(
              width: double.maxFinite,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 15, bottom: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(17),
                        child: Image.asset(
                          "assets/images/place2.jpg",
                          fit: BoxFit.fill,
                          height: 300,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Sea of Peace",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      const Text(
                        "Portic Team",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black54,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_searching_sharp,
                            size: 20,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          const Text(
                            "Accra",
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ...List.generate(18, (index) {
                            return Expanded(
                              child: Container(
                                height: 2,
                                color: index.isOdd
                                    ? Colors.transparent
                                    : Colors.black54,
                              ),
                            );
                          }),
                          const SizedBox(
                            width: 3,
                          ),
                          const Icon(
                            Icons.location_on_outlined,
                            size: 20,
                            color: Color(0xff09B1ED),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          const Text(
                            "Kumasi",
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 24,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "4.5",
                                style: TextStyle(fontSize: 17),
                              ),
                            ],
                          ),
                          RichText(
                            text: const TextSpan(
                              text: "\$22",
                              style: TextStyle(
                                color: Color(0xff09B1ED),
                                fontSize: 20,
                              ),
                              children: [
                                TextSpan(
                                  text: "/Person",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 15
                                  )
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ]),
              ),
            ),
          );
        }),
      ),
    );
  }
}
