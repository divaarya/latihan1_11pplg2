
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg_2/controllers/calculator_controllers.dart';
import 'package:latihan1_11pplg_2/custom_button.dart';
import 'package:latihan1_11pplg_2/custom_textfield.dart';
import 'package:latihan1_11pplg_2/routes/routes.dart';



class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final CalculatorControllers calculatorControllers =
      Get.put(CalculatorControllers());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextfield(
              controller: calculatorControllers.txtAngka1,
              label: "Masukkan angka 1",
              labelColor: Colors.green,
              pass: false,
            ),
            const SizedBox(height: 10),

            CustomTextfield(
              controller: calculatorControllers.txtAngka2,
              label: "Masukkan angka 2",
              labelColor: Colors.red,
              pass: false,
            ),
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  myText: "+",
                  myTextColor: Colors.black,
                  onPressed: calculatorControllers.tambah,
                  width: 80,
                  height: 50,
                ),
                const SizedBox(width: 15),
                CustomButton(
                  myText: "-",
                  myTextColor: Colors.blue,
                  onPressed: calculatorControllers.kurang,
                  width: 80,
                  height: 50,
                ),
              ],
            ),
            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  myText: "*",
                  myTextColor: Colors.black,
                  onPressed: calculatorControllers.kali,
                  width: 80,
                  height: 50,
                ),
                const SizedBox(width: 15),
                CustomButton(
                  myText: "/",
                  myTextColor: Colors.blue,
                  onPressed: calculatorControllers.bagi,
                  width: 80,
                  height: 50,
                ),
              ],
            ),

            const SizedBox(height: 30),

            Obx(
              () => Text(
                "Hasil: ${calculatorControllers.textHasil.value}",
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),

            CustomButton(
              myText: "Pindah",
              myTextColor: Colors.red,
              height: 35,
              width: 150,
              onPressed: () {
          Get.offNamed(AppRoutes.players);
}

            ),
          ],
        ),
      ),
    );
  }
}