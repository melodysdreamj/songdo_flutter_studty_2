

import 'package:flutter/material.dart';

class AsyncTestPage extends StatefulWidget {
  const AsyncTestPage({Key? key}) : super(key: key);

  @override
  State<AsyncTestPage> createState() => _AsyncTestPageState();
}

class _AsyncTestPageState extends State<AsyncTestPage> {

  asyncFunction() async {
    // Future.delayed(Duration(milliseconds: 1000))
    //     .then((value) => value)
    //     .catchError((e) {
    //       print(e);
    //     });
    try{
      print('asyncFunction start ${DateTime.now()}');
      await Future.delayed(Duration(milliseconds: 1000));
      print('asyncFunction end ${DateTime.now()}');
    }
    catch(e){
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () async {
                await asyncFunction();
                print('');
              },
              child: Text('테스트1'),
          )
        ],
      ),
    );
  }
}
