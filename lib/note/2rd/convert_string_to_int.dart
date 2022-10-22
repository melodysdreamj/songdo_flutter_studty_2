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
        onPressed: () {
          /// //////////////////
          String a = "170";
          String b = "560";

          int _a = int.tryParse(a) ?? 0;
          int _b = int.tryParse(b) ?? 0;

          print("${_a + _b}");

          /// //////////////////
        },
        child: Icon(Icons.sentiment_satisfied),
      ),
    );
  }
}

main() {
  runApp(MaterialApp(
    home: NewExample(),
  ));
}
