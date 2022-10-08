import 'package:flutter/material.dart';
import 'package:songdo_flutter_studty_2/model/todo_model.dart';

class TodoAddPage extends StatefulWidget {
  const TodoAddPage({Key? key}) : super(key: key);

  @override
  State<TodoAddPage> createState() => _TodoAddPageState();
}

class _TodoAddPageState extends State<TodoAddPage> {
  final _titleTextController = TextEditingController();
  final _contentTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo Add'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: _titleTextController,
              decoration: const InputDecoration(
                hintText: 'Title',
              ),
            ),
            TextField(
              controller: _contentTextController,
              decoration: const InputDecoration(
                hintText: 'Content',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop<TodoModel>(context, TodoModel(
                    title : _titleTextController.text,
                    content : _contentTextController.text,
                ));
              },
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
