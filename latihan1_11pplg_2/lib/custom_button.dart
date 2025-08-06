import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String myText;
  final Color myTextColor;
  final VoidCallback onPressed;
  final double width;
  final double height;

  const CustomButton({
    super.key,
    required this.myText,
    required this.myTextColor,
    required this.onPressed,
    this.width = 80, 
    this.height = 50, 
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          myText,
          style: TextStyle(color: myTextColor, fontSize: 18),
        ),
      ),
    );
  }
}
