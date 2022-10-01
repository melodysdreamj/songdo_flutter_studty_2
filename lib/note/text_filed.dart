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
    home: NewExample(),
  ));
}
