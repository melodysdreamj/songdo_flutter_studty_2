import 'package:flutter/material.dart';

import 'text_filed.dart';


class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      IndexedStack(
        index: _currentIndex,
        children: [
          Container(color: Colors.red,),
          TextFiledExample(),
          Container(color: Colors.yellow,),
          Container(color: Colors.green,),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
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
    home: BottomNavigationBarExample(),
  ));
}
