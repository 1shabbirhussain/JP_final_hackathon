import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon/assets/colors.dart';
import 'package:hackathon/ui/edit_profile/edit_profile_view.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // -------------------------APP BAR------------------
        appBar: AppBar(
          title: const Center(child: Text("Profile")),
        ),
        // -------------------------APP BAR------------------
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                      height: 50,
                      child: Image.asset(
                        "images/Ellipse.png",
                      )),
                ),
                const Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: MyColors.black12,
                    child: Icon(Icons.person_2_outlined),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Alvart Ainstain",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "@albart.ainstain",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: MyColors.black38),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Get.to(EditprofileView());
                  },
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          border: Border.all(color: MyColors.black26, width: 1),
                          borderRadius: BorderRadius.circular(5)),
                      child: Text("Edit"),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                // -------------------------------ROW------------------------
                Container(
                  width: 250,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.watch_later_outlined),
                          Text(
                            "5",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                            ),
                          ),
                          Text(
                            "On Going",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: MyColors.black38),
                          )
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        height: 70,
                      ),
                      Column(
                        children: [
                          Icon(Icons.watch_later_outlined),
                          Text(
                            "25",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 22,
                            ),
                          ),
                          Text(
                            "Total Complete",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: MyColors.black38),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                // -------------------------------ROW------------------------
                SizedBox(
                  height: 30,
                ),
                // -----------------------------------------------TILES-------------------
                ExpansionTile(
                  collapsedShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                          color: MyColors.black12, width: 2)),

                  textColor: Theme.of(context).primaryColor,
                  title: const Text(
                    "Tender Description",
                    style: TextStyle(),
                  ),
                  // leading: const Icon(Icons.description_outlined),
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: const Text(
                          "Description..................Description..................Description..................."),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                                // -----------------------------------------------TILES-------------------
                ExpansionTile(
                  collapsedShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                          color: MyColors.black12, width: 2)),

                  textColor: Theme.of(context).primaryColor,
                  title: const Text(
                    "Tender Description",
                    style: TextStyle(),
                  ),
                  // leading: const Icon(Icons.description_outlined),
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: const Text(
                          "Description..................Description..................Description..................."),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                                // -----------------------------------------------TILES-------------------
                ExpansionTile(
                  collapsedShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                          color: MyColors.black12, width: 2)),

                  textColor: Theme.of(context).primaryColor,
                  title: const Text(
                    "Tender Description",
                    style: TextStyle(),
                  ),
                  // leading: const Icon(Icons.description_outlined),
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: const Text(
                          "Description..................Description..................Description..................."),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                                // -----------------------------------------------TILES-------------------
                ExpansionTile(
                  collapsedShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                          color: MyColors.black12, width: 2)),

                  textColor: Theme.of(context).primaryColor,
                  title: const Text(
                    "Tender Description",
                    style: TextStyle(),
                  ),
                  // leading: const Icon(Icons.description_outlined),
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: const Text(
                          "Description..................Description..................Description..................."),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                                // -----------------------------------------------TILES-------------------
                ExpansionTile(
                  collapsedShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                          color: MyColors.black12, width: 2)),

                  textColor: Theme.of(context).primaryColor,
                  title: const Text(
                    "Tender Description",
                    style: TextStyle(),
                  ),
                  // leading: const Icon(Icons.description_outlined),
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: const Text(
                          "Description..................Description..................Description..................."),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                              // -----------------------------------------Button---------------------
              InkWell(
                onTap: () {
                  // Get.to(CustomNavbar());
                },
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: MyColors.black12.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 10,
                        offset: const Offset(0, 0),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: const Center(
                    child: Text(
                      "Log Out",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Source-San-3",
                        color: MyColors.white100,
                      ),
                    ),
                  ),
                ),
              ),
              // -----------------------------------------Button---------------------
              ],
            ),
          ),
        )
        );
  }
}
