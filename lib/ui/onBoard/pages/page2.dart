
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon/assets/colors.dart';
import 'package:hackathon/ui/authentication/login/login_view.dart';
import 'package:hackathon/ui/navbar/custom_navbar_view.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ---------------------------Image-------------
          SizedBox(
            height: 500,
            child: Image.asset(
              "images/boy.png",
              fit: BoxFit.cover,
            ),
          ),

          // ---------------------------TEXT-------------
          Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Task Management",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).primaryColor),
                ),
                const SizedBox(
                  height: 10,
                ),
                // ---------------------------hEADING-------------
                const Text(
                  "Work more \nStructured and \n  Organized 👌",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
// -------------------END CONTAINER--------

// ---------------------SKIP-----------
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(onTap: () {
                Get.to(LoginView());
              }, child: Container(padding: const EdgeInsets.all(30), child: const Text("Skip"))),
              Stack(children: [
                SizedBox(
                  height: 150,
                  child: Image.asset(
                    "images/Rectangle.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 30,
                  right: 10,
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.arrow_forward, color: MyColors.white100,)))
              ]),
            ],
          ),
        ],
      ),
    );
  }
}