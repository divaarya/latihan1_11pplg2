
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class CustomTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final Color labelColor;
  final bool pass;

  const CustomTextfield({
    super.key,
    required this.controller,
    required this.label,
    required this.labelColor,
    required this.pass,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: pass,
      keyboardType: TextInputType.number, 
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly, 
      ],
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: labelColor),
        border: const UnderlineInputBorder(),
      ),
    );
  }
}