import 'package:flutter/material.dart';

import 'note/text_filed.dart';
import 'page/bmi_calculator_page_2.dart';
import 'page/counter_page.dart';

var sex = 0;
var bmi;
var StandardWeight;
var PIBW;
var result_PIBW;

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample.BottomNavigatonBarExample({Key? key}) : super(key: key);

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


      appBar:AppBar(
        backgroundColor: const Color(0xff00c7ff),
        elevation: 0,
        title: Text('GDG_Study'),

        centerTitle:true
      ),
      body:
      IndexedStack(
        index: _currentIndex,
        children: [
          CounterPage(),
          BMIPage2(),
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
                Icons.edit_calendar_outlined,
              ),
              label: "BMI Cal"
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.check_circle_outline_outlined,
              ),
              label: "체크 리스트"
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.update_sharp,
              ),
              label: "설정"
          ),
        ],
      ),
    );
  }
}

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BottomNavigationBarExample.BottomNavigatonBarExample(),
  ));
}
