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
        Icon(Icons.favorite,color: Colors.red,size: 100,),
        /// //////////////////////////
      ),
    );
  }
}

main() {
  runApp(MaterialApp(home: NewExample(),));
}
