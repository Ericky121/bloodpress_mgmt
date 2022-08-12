import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final double width;
  final String text;
  const CustomTextWidget({Key? key, required this.width, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: Colors.white,
      ),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
            color: Colors.grey.shade500
        ),
      ),
    );
  }
}
