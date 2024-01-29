// navbar_controller.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomNavbarController extends GetxController {
  late PageController _pageController;
  RxInt selectedIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    _pageController = PageController(initialPage: selectedIndex.value);
  }

  void onPageChanged(int index) {
    selectedIndex.value = index;
  }

  void onTabChange(int index) {
    _pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  }

  @override
  void onClose() {
    _pageController?.dispose();
    super.onClose();
  }
  
  // Getter for PageController
  PageController? get pageController => _pageController;
}