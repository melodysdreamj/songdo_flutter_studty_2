import 'package:flutter/material.dart';

import '../note/icon.dart';
import '../note/move_page_receive.dart';

class BMIPage2 extends StatefulWidget {
  const BMIPage2({Key? key}) : super(key: key);

  @override
  State<BMIPage2> createState() => _BMIPage2State();
}

class _BMIPage2State extends State<BMIPage2> {
  TextEditingController heightController = TextEditingController();
  TextEditingController wightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: heightController,
              keyboardType: TextInputType.number,
              cursorColor: Colors.red,
              decoration: InputDecoration(
                  hintText: "170",
                  labelText: "키",
                  border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: wightController,
              keyboardType: TextInputType.number,
              cursorColor: Colors.red,
              decoration: InputDecoration(
                  hintText: "70",
                  labelText: "몸무게",
                  border: OutlineInputBorder()),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              String heightString = heightController.text;
              String wightString = wightController.text;

              int height = int.tryParse(heightString) ?? 0;
              int wight = int.tryParse(wightString) ?? 0;

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MovePageReceiveExample(
                    height: height,
                    wight: wight,
                  ),
                ),
              );
            },
            child: Text("클릭하세요"),
          ),
        ],
      ),
    );
  }
}

main() {
  runApp(MaterialApp(
    home: BMIPage2(),
  ));
}
