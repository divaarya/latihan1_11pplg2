import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg_2/controllers/football_player_contoller.dart';
import 'package:latihan1_11pplg_2/model/player_model.dart';

class EditPlayerPage extends StatefulWidget {
  const EditPlayerPage({Key? key}) : super(key: key);

  @override
  _EditPlayerPageState createState() => _EditPlayerPageState();
}

class _EditPlayerPageState extends State<EditPlayerPage> {
  late TextEditingController namaController;
  late TextEditingController posisiController;
  late TextEditingController nomorController;
  late String selectedImage;
  late int index;

  final List<String> imageOptions = [
    "assets/mbappe.jpeg",
    "assets/carreras.jpeg",
    "assets/dean.jpeg",
    "assets/curtois.jpeg",
    "assets/trent.jpeg",
  ];

  @override
  void initState() {
    super.initState();

    index = Get.arguments as int; 
    final player = Get.find<FootballPlayerController>().players[index];

    namaController = TextEditingController(text: player.nama);
    posisiController = TextEditingController(text: player.posisi);
    nomorController = TextEditingController(text: player.nomorPunggung.toString());
    selectedImage = player.imageAsset;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Edit Player")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(selectedImage),
            ),
            const SizedBox(height: 16),

            DropdownButtonFormField<String>(
              value: selectedImage,
              items: imageOptions.map((img) {
                return DropdownMenuItem(
                  value: img,
                  child: Text(img.split('/').last),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedImage = value!;
                });
              },
              decoration: const InputDecoration(labelText: "Foto"),
            ),
            const SizedBox(height: 16),

            TextField(
              controller: namaController,
              decoration: const InputDecoration(labelText: "Nama"),
            ),
            TextField(
              controller: posisiController,
              decoration: const InputDecoration(labelText: "Posisi"),
            ),
            TextField(
              controller: nomorController,
              decoration: const InputDecoration(labelText: "Nomor Punggung"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final controller = Get.find<FootballPlayerController>();
                controller.players[index] = Player(
                  nama: namaController.text,
                  posisi: posisiController.text,
                  nomorPunggung: int.tryParse(nomorController.text) ?? 0,
                  imageAsset: selectedImage,
                );
                Get.back();
              },
              child: const Text("Save"),
            )
          ],
        ),
      ),
    );
  }
}
