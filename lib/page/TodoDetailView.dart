import 'package:flutter/material.dart';

class TodoDetailView extends StatefulWidget {
  const TodoDetailView({Key? key}) : super(key: key);

  @override
  State<TodoDetailView> createState() => _TodoDetailViewState();
}

class _TodoDetailViewState extends State<TodoDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:
      Container(
        color: Colors.red,
      )
    );
  }
}
