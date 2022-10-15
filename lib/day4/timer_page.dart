import 'dart:async';

import 'package:flutter/material.dart';

class TimerPage extends StatefulWidget {
  const TimerPage({Key? key}) : super(key: key);

  @override
  State<TimerPage> createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {

  Timer? timer;
  Stopwatch stopwatch = Stopwatch();
  Duration time = Duration.zero;

  playAndPause(){
    if(timer != null){
      stopwatch.stop();
      timer?.cancel();
      timer = null;
      return;
    }
    else {
      stopwatch.start();
      timer = Timer.periodic(
        Duration(milliseconds: 10),
            (timer) {
          setState(() {
            time = stopwatch.elapsed;
          });
        },
      );
    }
  }

  reset(){
    if(timer != null){
      timer?.cancel();
      timer = null;
    }
    stopwatch.reset();
    setState(() {
      time = Duration.zero;
    });
  }

  mark(){
    // TODO 기록 저장하기
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stopwatch'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                      '${time.inHours.toString().padLeft(2, '0')} : ${(time.inMinutes % 60).toString().padLeft(2, '0')} : ${(time.inSeconds % 60).toString().padLeft(2, '0')}',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  Text(
                      '${(time.inMilliseconds / 10).floor() % 100}',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                child: Icon(Icons.refresh),
                onPressed: reset,
              ),
              FloatingActionButton.large(
                child: Icon(Icons.play_arrow),
                onPressed: playAndPause,
              ),
              FloatingActionButton(
                child: Icon(Icons.edit),
                onPressed: mark,
              ),
            ],
          )
        ],
      ),
    );
  }
}
