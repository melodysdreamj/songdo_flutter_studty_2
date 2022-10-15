import 'package:flutter/material.dart';
import 'package:songdo_flutter_studty_2/day4/async_test_page.dart';
import 'package:songdo_flutter_studty_2/day4/network_test_page.dart';
import 'package:songdo_flutter_studty_2/day4/timer_page.dart';
import 'package:songdo_flutter_studty_2/day4/timer_test.dart';
import 'package:songdo_flutter_studty_2/page/TodoPage.dart';

import 'page/bmi_calcurator_page.dart';
import 'page/counter_page.dart';

class BotoomNavigationBarExample extends StatefulWidget {
  const BotoomNavigationBarExample({Key? key}) : super(key: key);

  @override
  State<BotoomNavigationBarExample> createState() =>
      _BotoomNavigationBarExampleState();
}

class _BotoomNavigationBarExampleState
    extends State<BotoomNavigationBarExample> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      IndexedStack(
        index: _currentIndex,
        children: [
          CounterPage(),
          BMICalculatorPage(),
          TodoPage(),
          // TimerTestPage(),
          // AsyncTestPage(),
          // NetworkTestPage(),
          TimerPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (index){
          _currentIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "카운터"
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              label: "BMI"
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.music_note,
              ),
              label: "TODO"
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
              ),
              label: "활동"
          ),
        ],
      ),
    );
  }
}

main() {
  runApp(MaterialApp(
    home: BotoomNavigationBarExample(),
  ));
}
