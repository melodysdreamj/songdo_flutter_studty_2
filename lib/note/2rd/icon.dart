import 'package:flutter/material.dart';

class IconExample extends StatefulWidget {
  const IconExample({Key? key}) : super(key: key);

  @override
  State<IconExample> createState() => _IconExampleState();
}

class _IconExampleState extends State<IconExample> {
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
  runApp(MaterialApp(home: IconExample(),));
}
