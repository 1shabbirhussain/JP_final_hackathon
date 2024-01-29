import 'package:flutter/material.dart';
import 'package:hackathon/assets/colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // --------------------- app bar----------------------------/
      appBar: AppBar(
        leading: const Icon(Icons.apps),
        title: const Center(child: Text("Friday,26")),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.notifications),
          )
        ],
      ),
      // --------------------- app bar----------------------------/
      body: Container(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),

            // ----------------------------------HEADING---------------------
            const SizedBox(
              width: 240,
              child: Text(
                "Let’s make a habits together  🙌",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                ),
              ),
            ),
            // ----------------------------------HEADING---------------------
            // ----------------------------------Slider---------------------
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Image.asset("images/Card.png"),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset("images/Card.png"),
                ],
              ),
            ),
            // ----------------------------------Slider---------------------
            const SizedBox(
              height: 30,
            ),
            // ----------------------------------Progress---------------------
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "In Progress",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                Icon(Icons.arrow_forward_ios_rounded),
              ],
            ),
            // ----------------------------------Progress---------------------
            const SizedBox(
              height: 30,
            ),
            // ----------------------------------List---------------------
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    height: 80,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: MyColors.black12, // Border color
                        width: 1.0, // Border width
                      ),
                      borderRadius:
                          BorderRadius.circular(10.0), // Border radius
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Productivity Mobile App",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: MyColors.black38,
                              ),
                            ),
                            Text(
                              "Create Detail Booking",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "2 mins ago",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: MyColors.black38,
                              ),
                            ),
                          ],
                        ),
                        // -----------------------------row image----------------------------
                        Image.asset("images/loader.png"),
                      ],
                    ),
                  );
                },
              ),
            )

            // ----------------------------------List---------------------
          ],
        ),
      ),
    );
  }
}
