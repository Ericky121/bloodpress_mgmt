import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';

import '../widgets/BloodInfoBarWidget.dart';

class RecordViewScreen extends StatefulWidget {
  const RecordViewScreen({Key? key}) : super(key: key);

  @override
  State<RecordViewScreen> createState() => _RecordViewScreenState();
}

class _RecordViewScreenState extends State<RecordViewScreen> {

  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          DatePicker(
            DateTime.now(),
            height: 100,
            width: 80,
            //controller: _controller,
            initialSelectedDate: DateTime.now(),
            selectionColor: Colors.black,
            selectedTextColor: Colors.white,
            // inactiveDates: [
            //   DateTime.now().add(Duration(days: 3)),
            //   DateTime.now().add(Duration(days: 4)),
            //   DateTime.now().add(Duration(days: 7))
            // ],
            onDateChange: (date) {
              // New date selected
              setState(() {
                _selectedDate = date;
              });
            },
          ),
          Gap(20),
          BloodInfoBarWidget(
            iconColor: Colors.red,
            bloodPress: "130/100",
            heartRate: "80",
            measureDate: "2022/08/13",
            measureTime: "17:05:30",
          ),
          Divider(thickness: 2, color: Colors.grey.withOpacity(0.2),),
          BloodInfoBarWidget(
            iconColor: Colors.blue,
            bloodPress: "130/90",
            heartRate: "76",
            measureDate: "2022/08/12",
            measureTime: "17:08:36",
          ),
        ],
      ),
    );
  }
}
