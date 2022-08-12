import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomInputTextWidget extends StatelessWidget {
  final Color iconColor;
  final String text;
  final double width;

  const CustomInputTextWidget({
    Key? key,
    required this.iconColor,
    required this.text,
    required this.width
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: iconColor,
                ),
              ),
              Gap(5),
              Text(
                text,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                ),
              )
            ],
          ),
          Gap(10),
          Container(
            width: width,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.white,
                border: Border.all(
                  width: 1,
                  color: Colors.grey,
                )
            ),
          )
        ],
      ),
    );
  }
}
