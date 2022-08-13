import 'package:bloodpress_mgmt/screens/record_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import 'input_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  int _selectedIndex = 0;

  static final List<Widget> _widgetOption = <Widget>[
    InputScreen(),
    RecordViewScreen(),
    Text("통계"),
    Text("설정"),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade500,
      ),
      body: Center(child: _widgetOption[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.blueGrey,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: const Color(0xFF526480),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              FluentSystemIcons.ic_fluent_apps_add_in_filled,
              size: 20,
            ),
            label: "입력",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FluentSystemIcons.ic_fluent_notebook_filled,
              size: 20,
            ),
            label: "기록",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FluentSystemIcons.ic_fluent_data_area_filled,
              size: 20,
            ),
            label: "통계",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FluentSystemIcons.ic_fluent_settings_filled,
              size: 20,
            ),
            label: "설정",
          ),
        ],
      ),
    );
  }
}
