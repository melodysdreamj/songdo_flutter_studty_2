import 'package:flutter/material.dart';

class ButtonExample extends StatefulWidget {
  const ButtonExample({Key? key}) : super(key: key);

  @override
  State<ButtonExample> createState() => _ButtonExampleState();
}

class _ButtonExampleState extends State<ButtonExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child:

              /// //////////////////////////
              ElevatedButton(
        onPressed: () {},
        child: Text("클릭하세요"),
      ),

          /// //////////////////////////
          ),
    );
  }
}

main() {
  runApp(MaterialApp(
    home: ButtonExample(),
  ));
}
