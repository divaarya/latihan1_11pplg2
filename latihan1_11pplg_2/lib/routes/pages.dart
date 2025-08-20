import 'package:get/get.dart';
import 'package:latihan1_11pplg_2/pages/edit_player.dart';
import 'package:latihan1_11pplg_2/pages/main_page.dart';
import 'package:latihan1_11pplg_2/pages/kalkulator_pages.dart';
import 'package:latihan1_11pplg_2/pages/football_player.dart';
import 'package:latihan1_11pplg_2/pages/profile_page.dart';
import 'routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.main_page, page: () => MainPage()),
    GetPage(name: AppRoutes.calculator, page: () => CalculatorPage()),
    GetPage(name: AppRoutes.players, page: () => FootballPlayerPage()),
    GetPage(name: AppRoutes.profile, page: () => ProfilePage()),
    GetPage(name: AppRoutes.edit_player, page: () => EditPlayerPage()),

  ];
}
