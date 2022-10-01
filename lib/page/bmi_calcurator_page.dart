import 'package:flutter/material.dart';

class BMICalculatorPage extends StatefulWidget {
  const BMICalculatorPage({Key? key}) : super(key: key);

  @override
  State<BMICalculatorPage> createState() => _BMICalculatorPageState();
}

class _BMICalculatorPageState extends State<BMICalculatorPage> {

  TextEditingController heightController = TextEditingController();
  TextEditingController wightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 60,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: heightController,
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
              cursorColor: Colors.red,
              decoration: InputDecoration(
                  hintText: "몸무게",
                  labelText: "70",
                  border: OutlineInputBorder()),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("클릭하세요"),
          ),
        ],
      ),
    );
  }
}

main() {
  runApp(MaterialApp(home: BMICalculatorPage(),));
}
