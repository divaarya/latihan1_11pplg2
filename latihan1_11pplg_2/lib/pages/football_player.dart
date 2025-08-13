import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg_2/controllers/football_player_contoller.dart';
import 'package:latihan1_11pplg_2/pages/edit_player.dart';
class FootballPages extends StatelessWidget {
  final FootballPlayerController controller = Get.put(FootballPlayerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Real Madrid Players")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(() => ListView.builder(
          itemCount: controller.players.length,
          itemBuilder: (context, index) {
            final player = controller.players[index];
            return ListTile(
              leading: Image.asset(player.imageAsset, width: 50),
              title: Text(player.nama),
              subtitle: Text("${player.posisi} - #${player.nomorPunggung}"),
             onTap: () {
             print("player clicked : " + controller.players[index].nama);
             Get.to(() => EditPlayerPage(index: index));

}

            );
          },
        )), 
      ),
    );
  }
}
