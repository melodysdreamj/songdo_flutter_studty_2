

import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
    home: TimerTestPage(),
  ),
  );
}

class TimerTestPage extends StatefulWidget {
  const TimerTestPage({Key? key}) : super(key: key);

  @override
  State<TimerTestPage> createState() => _TimerTestPageState();
}

class _TimerTestPageState extends State<TimerTestPage> {

  Timer? timer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Timer(
                const Duration(milliseconds: 1000),
                    () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('1초 지났음!'),
                    ),
                  );
                },
              );
            },
            child: Text('1초 뒤 실행'),
          ),
          ElevatedButton(
            onPressed: () {
              timer = Timer.periodic(
                const Duration(milliseconds: 1000),
                    (timer) {
                  ScaffoldMessenger.of(context).clearSnackBars();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('1초 지남!'),
                    ),
                  );
                },
              );
            },
            child: Text('1초 마다 실행'),
          ),
          ElevatedButton(
            onPressed: () {
              timer?.cancel();
            },
            child: Text('타이머 종료'),
          ),
        ],
      )
    );
  }
}
