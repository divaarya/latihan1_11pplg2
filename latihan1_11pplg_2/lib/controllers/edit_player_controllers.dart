import 'package:get/get.dart';
import '../model/player_model.dart';
import 'football_player_contoller.dart';

class EditPlayerController extends GetxController {
  final footballPlayerController = Get.find<FootballPlayerController>();

  void updatePlayer(int index, Player updatedPlayer) {
    footballPlayerController.players[index] = updatedPlayer;
    footballPlayerController.players.refresh();
  }
}
