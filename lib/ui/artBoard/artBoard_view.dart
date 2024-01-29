import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon/Components/text_widgets.dart';
import 'package:hackathon/assets/colors.dart';
import 'package:hackathon/ui/onBoard/onBoard_view.dart';

class ArtBoard extends StatelessWidget {
  const ArtBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                top: 0,
                child: SizedBox(
                  height: 450,
                  child: Image.asset(
                    "images/bg.png",
                    fit: BoxFit.cover,
                  ),
                )),
            // ----------------column----------------------------------------
            Positioned.fill(
                top: 400,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      // -----------------------LOGO---------------
                      SizedBox(
                        child: Image.asset(
                          "images/Logo.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      // -----------------------HEADING--------------
                      const SizedBox(
                          width: 300,
                          child: Text(
                            "Building Better Workplaces ",
                            style: TextStyle(
                              fontSize: 37,
                              fontWeight: FontWeight.w700,
                              fontFamily: "Source-San-3",
                            ),
                            textAlign: TextAlign.center,
                          )),
                      const SizedBox(
                        height: 5,
                      ),
                      // ----------------------------------------PARAGRAPH-----------------
                      const SizedBox(
                        width: 300,
                        child: Text(
                          textAlign: TextAlign.center,
                          "Create a unique emotional story that describes better than words",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Source-San-3",
                            color: MyColors.black38,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      // ---------------------------------BUTTON--------------------
                      InkWell(

                      onTap: () {
                        Get.to(OnBoardView());
                      },
                        child: Container(
                          width: 250,
                          height: 60,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: MyColors.black12.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 10,
                                offset: Offset(0, 0),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15),
                            color: Theme.of(context).primaryColor,
                          ),
                          child: const Center(
                            child: Text(
                              "Get Started",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Source-San-3",
                                color: MyColors.white100,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                     
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
