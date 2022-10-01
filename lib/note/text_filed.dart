import 'package:flutter/material.dart';

class TextFiledExample extends StatefulWidget {
  const TextFiledExample({Key? key}) : super(key: key);

  @override
  State<TextFiledExample> createState() => _TextFiledExampleState();
}

class _TextFiledExampleState extends State<TextFiledExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:

            /// //////////////////////////
            TextField(
          cursorColor: Colors.red,
          decoration: InputDecoration(
              hintText: "송도 플러터",
              labelText: "송도 화이팅",
              border: OutlineInputBorder()),
        ),

        /// //////////////////////////
      ),
    );
  }
}

main() {
  runApp(MaterialApp(
    home: TextFiledExample(),
  ));
}
