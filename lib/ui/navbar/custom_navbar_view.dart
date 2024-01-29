// navbar_widget.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hackathon/assets/colors.dart';
import 'package:hackathon/ui/chat/chat_view.dart';
import 'package:hackathon/ui/create/create.dart';
import 'package:hackathon/ui/home/home_view.dart';
import 'package:hackathon/ui/navbar/navbar_controller.dart';
import 'package:hackathon/ui/profile/profile_view.dart';
import 'package:hackathon/ui/project/project_view.dart';

class CustomNavbar extends StatelessWidget {
  final CustomNavbarController controller = Get.put(CustomNavbarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.pageController!,
        onPageChanged: controller.onPageChanged,
        children: [
          HomeView(), 
          Project(),
          CreateView(),
          ChatView(),
          ProfileView(),
        ],
      ),
      bottomNavigationBar: Obx(
        () => Container(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
              child: GNav(
                rippleColor: MyColors.black38,
                hoverColor: MyColors.black12,
                gap: 6,
                activeColor: Theme.of(context).primaryColor,
                iconSize: 24,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: Duration(milliseconds: 400),
                tabBackgroundColor: Theme.of(context).primaryColor.withOpacity(0.05),
                color: MyColors.black54,
                tabs: const [
                  GButton(
                    text: 'Home',
                    icon: Icons.home,
                  ),
                  GButton(
                    text: 'Projects',
                    icon: Icons.folder,
                  ),
                  GButton(
                    icon: Icons.add_circle_outline_outlined,
                    text: 'Create',
                  ),
                  GButton(
                    icon: Icons.chat,
                    text: 'Chat',
                  ),
                  GButton(
                    icon: Icons.person,
                    text: 'Profile',
                  ),
                ],
                selectedIndex: controller.selectedIndex.value,
                onTabChange: (index) {
                  controller.pageController!.animateToPage(
                    index,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Profile Screen'),
    );
  }
}