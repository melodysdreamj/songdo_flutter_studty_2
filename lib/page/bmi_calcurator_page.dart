import 'package:flutter/material.dart';
import 'package:songdo_flutter_studty_2/page/bmi_calculator_result.dart';

class BMICalculatorPage extends StatefulWidget {
  const BMICalculatorPage({Key? key}) : super(key: key);

  @override
  State<BMICalculatorPage> createState() => _BMICalculatorPageState();
}

class _BMICalculatorPageState extends State<BMICalculatorPage> {

  TextEditingController heightController = TextEditingController();
  TextEditingController wightController = TextEditingController();
  String _gender = "M";

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
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Text("Man : "),
          //     SizedBox(
          //       width: 20,
          //     ),
          //     Checkbox(value: _gender == "M", onChanged: (val) {
          //       setState(() {
          //         _gender = "";
          //         if (val == true) {
          //               _gender = "M";
          //           }
          //       });
          //     }),
          //   ],
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Text("Female : "),
          //     SizedBox(
          //       width: 20,
          //     ),
          //     Checkbox(value: _gender == "F", onChanged: (val) {
          //       setState(() {
          //         _gender = "";
          //         if (val == true) {
          //           _gender = "F";
          //         }
          //       });
          //     }),
          //   ],
          // ),
          RadioListTile<String>(
              title: Text("남"),
              value: "M", groupValue: _gender, onChanged: (value) {
                setState(() {
                  _gender = value as String;
                },
                );
          }),
          RadioListTile<String>(
              title: Text("여"),
              value: "F", groupValue: _gender, onChanged: (value) {
                setState(() {
                  _gender = value as String;
                });
          }),
          ElevatedButton(
            onPressed: () {
              String heightString = heightController.text;
              String wightString = wightController.text;

              int height = int.tryParse(heightString) ?? 0;
              int weight = int.tryParse(wightString) ?? 0;

              double bmi = weight / ((( (height) / 100) * ((height) / 100)) * 1);
              if (_gender == "F") {
                bmi = weight / ((( (height) / 100) * ((height) / 100)) * 0.85);
              }

              print("_gender:$_gender");
              print("bmi:$bmi");

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BMICalCulatorResult(
                        bmi: bmi,
                        height: height,
                        weight: weight,
                        gender: _gender,
                      )));
            },
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
