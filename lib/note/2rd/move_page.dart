import 'package:flutter/material.dart';

import 'icon.dart';

class MovePageExample extends StatefulWidget {
  const MovePageExample({Key? key}) : super(key: key);

  @override
  State<MovePageExample> createState() => _MovePageExampleState();
}

class _MovePageExampleState extends State<MovePageExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          /// //////////////////
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => IconExample(),
            ),
          );
          /// //////////////////
        },
        child: Icon(Icons.music_note_sharp),
      ),
    );
  }
}

main() {
  runApp(MaterialApp(home: MovePageExample(),));
}
