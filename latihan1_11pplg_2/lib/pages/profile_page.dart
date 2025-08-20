import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/carreras.jpeg'),
            ),
            const SizedBox(height: 16),

            const Text(
              "Arya Diva",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),

            Card(
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: const Icon(Icons.email),
                title: const Text("Email"),
                subtitle: const Text("arya321@gmail.com"),
              ),
            ),

            Card(
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: const Icon(Icons.phone),
                title: const Text("Nomor Telepon"),
                subtitle: const Text("+62 812 3456 7890"),
              ),
            ),

            Card(
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Alamat"),
                subtitle: const Text("Jawa Tengah,Kudus,Dawe"),
              ),
            ),

            Card(
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: const Icon(Icons.cake),
                title: const Text("Tanggal Lahir"),
                subtitle: const Text("22 Mei 2008"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
