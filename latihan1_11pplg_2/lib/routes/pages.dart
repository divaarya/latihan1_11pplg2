import 'package:get/get.dart';
import 'package:latihan1_11pplg_2/pages/edit_player.dart';
import '../pages/football_player.dart';
import '../pages/kalkulator_pages.dart';
import 'routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.calculatorPage, page: () => CalculatorPage()),
    GetPage(name: AppRoutes.FootballPage, page: () => FootballPages()),
    GetPage(
  name: "/editPlayer",page: () => EditPlayerPage(index: 0),
),
 
  ];
}
