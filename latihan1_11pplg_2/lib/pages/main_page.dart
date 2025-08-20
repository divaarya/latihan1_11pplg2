import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg_2/controllers/bottom_nav_controller.dart';
import 'package:latihan1_11pplg_2/pages/kalkulator_pages.dart';
import 'package:latihan1_11pplg_2/pages/football_player.dart';
import 'package:latihan1_11pplg_2/pages/profile_page.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final BottomNavController bottomNavController = Get.find();

  final List<Widget> pages = [
    CalculatorPage(),
    FootballPlayerPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => pages[bottomNavController.selectedIndex.value]),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            currentIndex: bottomNavController.selectedIndex.value,
            onTap: bottomNavController.changeTab,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.calculate),
                label: "Calculator",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.sports_soccer),
                label: "Players",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
          )),
    );
  }
}
