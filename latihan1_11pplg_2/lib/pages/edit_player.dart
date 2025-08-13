// edit_player.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/football_player_contoller.dart';
import '../model/player_model.dart';

class EditPlayerPage extends StatefulWidget {
  final int index;
  const EditPlayerPage({super.key, required this.index});

  @override
  State<EditPlayerPage> createState() => _EditPlayerPageState();
}

class _EditPlayerPageState extends State<EditPlayerPage> {
  late TextEditingController namaController;
  late TextEditingController posisiController;
  late TextEditingController nomorController;

  final FootballPlayerController controller = Get.find();

  @override
  void initState() {
    super.initState();
    final player = controller.players[widget.index];
    namaController = TextEditingController(text: player.nama);
    posisiController = TextEditingController(text: player.posisi);
    nomorController = TextEditingController(text: player.nomorPunggung.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Edit Player")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: namaController,
              decoration: const InputDecoration(labelText: "Nama"),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: posisiController,
              decoration: const InputDecoration(labelText: "Posisi"),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: nomorController,
              decoration: const InputDecoration(labelText: "Nomor Punggung"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final updatedPlayer = Player(
                  nama: namaController.text,
                  posisi: posisiController.text,
                  nomorPunggung: int.tryParse(nomorController.text) ?? 0,
                  imageAsset: controller.players[widget.index].imageAsset,
                );

                controller.updatePlayer(widget.index, updatedPlayer);
                Get.back();
              },
              child: const Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}
