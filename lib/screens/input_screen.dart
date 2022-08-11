import 'package:flutter/material.dart';

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
        child: Column(
          children: [
            Row(
              children: [

              ],
            )
          ],
        ),
      )
    );
  }
}
