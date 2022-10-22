import 'package:flutter/material.dart';

class NewExample extends StatefulWidget {
  const NewExample({Key? key}) : super(key: key);

  @override
  State<NewExample> createState() => _NewExampleState();
}

class _NewExampleState extends State<NewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          /// //////////////////

          int height = 170;
          int weight = 70;
          double bmi = weight / ((height / 100) * (height / 100));
          print("bmi:$bmi");
          /// //////////////////
        },
        child: Icon(Icons.sentiment_satisfied),
      ),
    );
  }
}

main() {
  runApp(MaterialApp(home: NewExample(),));
}
