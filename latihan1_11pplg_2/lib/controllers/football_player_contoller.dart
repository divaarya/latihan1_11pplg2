import 'package:get/get.dart';
import '../model/player_model.dart';

class FootballPlayerController extends GetxController {
  var players = <Player>[
    Player(
      nama: "Kylian Mbappe",
      posisi: "Forward",
      nomorPunggung: 7,
      imageAsset: "assets/mbappe.jpeg",
    ),
    Player(
      nama: "Alvaro Carreras",
      posisi: "Defender",
      nomorPunggung: 3,
      imageAsset: "assets/carreras.jpeg",
    ),
    Player(
      nama: "Dean Huejsein",
      posisi: "Midfielder",
      nomorPunggung: 8,
      imageAsset: "assets/dean.jpeg",
    ),
    Player(
      nama: "Thibaut Courtois",
      posisi: "Goalkeeper",
      nomorPunggung: 1,
      imageAsset: "assets/courtois.jpeg",
    ),
    Player(
      nama: "Trent Alexander-Arnold",
      posisi: "Defender",
      nomorPunggung: 66,
      imageAsset: "assets/trent.jpeg",
    ),
  ].obs;

  void updatePlayer(int index, Player updatedPlayer) {
  players[index] = updatedPlayer;
  players.refresh();
}

}
