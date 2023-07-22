import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    required this.onPressed,
    required this.height,
    required this.width,
    required this.title,
    super.key,
  });

  final VoidCallback? onPressed;
  final double height;
  final double width;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          title,
        ),
      ),
    );
  }
}
