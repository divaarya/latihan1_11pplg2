import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String jenisKelamin = 'Laki-laki';
  DateTime? tanggalLahir;

  Future<void> _selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(2000),
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
    );
    if (picked != null) {
      setState(() {
        tanggalLahir = picked;
      });
    }
  }

  Widget inputField(String label, TextEditingController controller,
      {bool isPassword = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        controller: controller,
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register")),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            inputField("Nama", namaController),
            inputField("Email / Username", emailController),
            inputField("Password", passwordController, isPassword: true),
            Text("Jenis Kelamin:"),
            Row(
              children: [
                Radio(
                  value: 'Laki-laki',
                  groupValue: jenisKelamin,
                  onChanged: (value) {
                    setState(() {
                      jenisKelamin = value!;
                    });
                  },
                ),
                Text("Laki-laki"),
                Radio(
                  value: 'Perempuan',
                  groupValue: jenisKelamin,
                  onChanged: (value) {
                    setState(() {
                      jenisKelamin = value!;
                    });
                  },
                ),
                Text("Perempuan"),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text("Tanggal Lahir: "),
                Text(tanggalLahir == null
                    ? "Belum dipilih"
                    : "${tanggalLahir!.day}/${tanggalLahir!.month}/${tanggalLahir!.year}"),
                Spacer(),
                ElevatedButton(
                  onPressed: _selectDate,
                  child: Text("Pilih"),
                )
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print("Nama: ${namaController.text}");
                print("Email: ${emailController.text}");
                print("Password: ${passwordController.text}");
                print("Gender: $jenisKelamin");
                print("Tanggal Lahir: $tanggalLahir");
              },
              child: Text("Register"),
            )
          ],
        ),
      ),
    );
  }
}
