import 'package:flutter/material.dart';
import 'package:hackathon/assets/colors.dart';

class Favourites extends StatelessWidget {
  const Favourites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search,
                    color: MyColors.primaryLight), // Add search icon
                hintText: 'Search',
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
            // -----------------------------------------EXPANDED--------------
            Expanded(
                child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return
                    // ListTile(
                    //   leading: CircleAvatar(child: Icon(Icons.person_2_outlined)),
                    //   title: Text("Jenny Alxinder"),
                    //   subtitle: Text("Active 1h ago"),
                    //   trailing: Icon(Icons.camera_alt_outlined),
                    //   shape: Border(
                    //       bottom: BorderSide(color: Colors.grey, width: 0.5)),
                    // );
                    Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    border: Border.all(color: MyColors.black12, width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Unity Dashboard ☺",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Source-San-3",
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: MyColors.black26, width: 1),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text("10/20"),
                          )
                        ],
                      ),
                      Text(
                        "Design",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Source-San-3",
                        ),
                      ),
                      Row(
                        children: [
                          Image.asset("images/people.png"),
                          Image.asset("images/line.png"),
                        ],
                      )
                    ],
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
