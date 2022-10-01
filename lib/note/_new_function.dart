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
          print("hello world");
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
