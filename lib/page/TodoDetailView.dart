import 'package:flutter/material.dart';
import 'package:songdo_flutter_studty_2/page/TodoPage.dart';
class TodoDetailView extends StatefulWidget {
  TodoDetailView({Key? key,
    required this.todo}) : super(key: key);

  TodoModel todo;

  @override
  State<TodoDetailView> createState() => _TodoDetailViewState();
}

class _TodoDetailViewState extends State<TodoDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('타이틀: ${widget.todo.title}',
                style: const TextStyle(fontSize: 30),
            ),
            Text('내용: ${widget.todo.content}',
              style: const TextStyle(fontSize: 50)
            ),
          ],
        ),
      )
    );
  }
}
