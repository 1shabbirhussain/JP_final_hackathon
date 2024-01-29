import 'package:flutter/material.dart';
import 'package:hackathon/assets/colors.dart';

class EditprofileView extends StatelessWidget {
  const EditprofileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // -------------------------APP BAR------------------
        appBar: AppBar(
          title: const Center(child: Text("Profile")),
          actions: [Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text("Save", style: TextStyle(color: Theme.of(context).primaryColor),),
          )],
        ),
        // -------------------------APP BAR------------------
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                  height: 30,
                ),
                // -------------------------------ROW------------------------

                // -----------------------------------------------form Field-------------------
                //NAME
                Text(
                  "Name",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: MyColors.black38),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter your Name',
                    contentPadding: const EdgeInsets.all(16.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: MyColors.primaryLight, width: 2.0),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: MyColors.black12, width: 2.0),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                  SizedBox(height: 30,),
                   //NAME
                Text(
                  "E-Mail",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: MyColors.black38),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'abc@gmail.com',
                    contentPadding: const EdgeInsets.all(16.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: MyColors.primaryLight, width: 2.0),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: MyColors.black12, width: 2.0),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),

                  SizedBox(height: 30,),
                   //USERNAME
                Text(
                  "Username",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: MyColors.black38),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: '@Username',
                    contentPadding: const EdgeInsets.all(16.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: MyColors.primaryLight, width: 2.0),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: MyColors.black12, width: 2.0),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                  SizedBox(height: 30,),

                   //NUMBER
                Text(
                  "Number",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: MyColors.black38),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: '+03478356631',
                    contentPadding: const EdgeInsets.all(16.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: MyColors.primaryLight, width: 2.0),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: MyColors.black12, width: 2.0),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                // -----------------------------------------------form Field-------------------
               
              ],
            ),
          ),
        ));
  }
}
