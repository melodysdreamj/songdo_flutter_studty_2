import 'package:flutter/material.dart';

import 'note/text_filed.dart';
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
          Container(color: Colors.yellow,),
          Container(color: Colors.green,),
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
              label: "홈"
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              label: "활동"
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.music_note,
              ),
              label: "활동"
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
