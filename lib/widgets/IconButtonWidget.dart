import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  final Icon icon;
  const IconButtonWidget({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      width: 70,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: Colors.grey.withOpacity(0.3),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          icon,
          InkWell(
            onTap: () {
              print("Tapped!!");
            },
            child: Icon(
              Icons.keyboard_arrow_down_rounded,
            ),
          ),

        ],
      ),
    );
  }
}
