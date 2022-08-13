import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BloodInfoBarWidget extends StatelessWidget {
  final Color iconColor;
  final String bloodPress;
  final String heartRate;
  final String measureDate;
  final String measureTime;

  const BloodInfoBarWidget({Key? key,
    required this.iconColor,
    required this.bloodPress,
    required this.heartRate,
    required this.measureDate,
    required this.measureTime
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
      ),
      child: Row(
        children: [
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: iconColor,
            ),
          ),
          Gap(20),
          Column(
            children: [
              Text(
                bloodPress,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              Gap(5),
              Row(
                children: [
                  Icon(
                    Icons.calendar_month_outlined,
                    color: Colors.grey,
                    size: 15,
                  ),
                  Gap(5),
                  Text(
                    measureDate,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  )
                ],
              )
            ],
          ),
          Gap(40),
          Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.monitor_heart_outlined,
                    color: Colors.grey,
                    size: 30,
                  ),
                  Gap(10),
                  Text(
                    heartRate,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              Gap(5),
              Row(
                children: [
                  Icon(
                    Icons.calendar_month_outlined,
                    color: Colors.grey,
                    size: 15,
                  ),
                  Gap(5),
                  Text(
                    measureTime,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
