import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg_2/controllers/bottom_nav_controller.dart';
import 'package:latihan1_11pplg_2/controllers/edit_player_controllers.dart';
import 'package:latihan1_11pplg_2/controllers/football_player_contoller.dart';
import 'package:latihan1_11pplg_2/pages/main_page.dart';
import 'package:latihan1_11pplg_2/routes/pages.dart';
import 'package:latihan1_11pplg_2/routes/routes.dart';

final FootballPlayerController playerController = Get.put(FootballPlayerController());

void main() {
  Get.put(BottomNavController());
  Get.put(FootballPlayerController());
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.main_page,
      getPages: AppPages.pages,
    );
  }
}

final footballController = Get.find<FootballPlayerController>();