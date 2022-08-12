import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/CustomInputTextWidget.dart';
import '../widgets/CustomTextWidget.dart';
import '../widgets/IconButtonWidget.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade500,
        title: Text(
            "혈압값 추가",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Row(
              children: [
                IconButtonWidget(
                  icon: Icon(Icons.calendar_month_outlined),
                ),
                Gap(10),
                CustomTextWidget(
                  width: 100,
                  text: "2022.08.12"
                ),
                Gap(20),
                IconButtonWidget(
                  icon: Icon(Icons.access_time),
                ),
                Gap(10),
                CustomTextWidget(
                    width: 20,
                    text: "15"
                ),
                Gap(5),
                Text(
                  ":",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Gap(5),
                CustomTextWidget(
                    width: 20,
                    text: "40"
                ),
              ],
            ),
            Gap(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomInputTextWidget(
                  width: 150,
                  iconColor: Colors.red,
                  text: "최고(mmHg)",
                ),
                Gap(10),
                CustomInputTextWidget(
                  width: 150,
                  iconColor: Colors.blue,
                  text: "최저(mmHg)",
                ),
              ],
            ),
            Gap(20),
            Divider(
              thickness: 15,
              color: Colors.grey.withOpacity(0.1),
            ),
            Gap(20),
            CustomInputTextWidget(
              width: 300,
              iconColor: Colors.orange,
              text: "맥박(분/회)",
            ),
            Gap(20),
            CustomInputTextWidget(
              width: 300,
              iconColor: Colors.green,
              text: "몸무게(Kg)",
            ),
          ],
        ),
      )
    );
  }
}
