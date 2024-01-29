import 'package:flutter/material.dart';
import 'package:hackathon/assets/colors.dart';
import 'package:hackathon/ui/onBoard/pages/page1.dart';
import 'package:hackathon/ui/onBoard/pages/page2.dart';
import 'package:hackathon/ui/onBoard/pages/page3.dart';

class OnBoardView extends StatelessWidget {
  const OnBoardView({Key? key});

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [const Page1(), const Page2(), const Page3()];
    return Scaffold(
      body: PageView.builder(
        itemCount: pages.length,
        itemBuilder: (context, index) {
          return pages[index];
        },
      ),
    );
  }
}
