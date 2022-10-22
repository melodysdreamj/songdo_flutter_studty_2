import 'package:flutter/material.dart';

class MovePageReceiveExample extends StatefulWidget {
  MovePageReceiveExample({
    Key? key,
    required this.height,
    required this.wight,
  }) : super(key: key);
  int height;
  int? wight;

  @override
  State<MovePageReceiveExample> createState() => _MovePageReceiveExampleState();
}

class _MovePageReceiveExampleState extends State<MovePageReceiveExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:

            /// //////////////////////////
            Text("${widget.height} ${widget.wight}"),

        /// //////////////////////////
      ),
    );
  }
}

main() {
  runApp(MaterialApp(
    home: MovePageReceiveExample(height: 160,wight: 70,),
  ));
}
