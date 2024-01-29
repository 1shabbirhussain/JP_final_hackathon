import 'package:flutter/material.dart';
import 'package:hackathon/assets/colors.dart';
import 'package:hackathon/ui/edit_profile/edit_profile_view.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:hackathon/ui/project/screens/favourites.dart';


class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // -------------------------APP BAR------------------
      appBar: AppBar(
        // leading: const Icon(Icons.apps),
        title: const Center(child: Text("Projects")),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.notifications),
          )
        ],
      ),
      // -------------------------APP BAR------------------
      body: DefaultTabController(
              length: 3,
              child: Column(
      children: <Widget>[

        ButtonsTabBar(
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          borderColor:Colors.transparent ,
          backgroundColor: MyColors.primaryLight.withOpacity(0.05),
          unselectedBackgroundColor: Colors.white,
          labelStyle: TextStyle(
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: TextStyle(
            color: MyColors.black87,
            fontWeight: FontWeight.bold,
          ),
          borderWidth: 1,
          unselectedBorderColor: Colors.transparent,
          // borderColor: ,
          radius: 100,
          tabs: const [
            Tab(
              icon: Icon(Icons.favorite_border_outlined),
              text: "Favourites",
            ),
            Tab(
              icon: Icon(Icons.access_time),
              text: "Recent",
            ),
            Tab(
              icon: Icon(Icons.access_time),
              text: "All",
            ),
          
          ],
        ),
         Expanded(
          child: TabBarView(
            children: <Widget>[
              Favourites(),
              Favourites(),
              Favourites(),
              // EditprofileView(),
              
            
            ],
          ),
        ),
      ],
              ),
            ),
    );
  }
}
