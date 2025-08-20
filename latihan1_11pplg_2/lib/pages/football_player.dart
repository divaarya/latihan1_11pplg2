import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg_2/controllers/football_player_contoller.dart';
import 'package:latihan1_11pplg_2/pages/edit_player.dart';
import 'package:latihan1_11pplg_2/routes/routes.dart';

class FootballPlayerPage extends StatelessWidget {
  final controller = Get.find<FootballPlayerController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Real Madrid Players")),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Obx(
          () => ListView.builder(
            itemCount: controller.players.length,
            itemBuilder: (context, index) {
              final player = controller.players[index];
              return Card(
                child: ListTile(
                  leading: Image.asset(player.imageAsset, width: 50),
                  title: Text(player.nama),
                  subtitle: Text("${player.posisi} - #${player.nomorPunggung}"),
                  onTap: () {
                    Get.toNamed(AppRoutes.edit_player, arguments: index);
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
