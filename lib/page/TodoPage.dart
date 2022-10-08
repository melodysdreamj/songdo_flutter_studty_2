import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class TodoModel
{
  String title;
  String content;

  TodoModel({required this.title, required this.content});
}

class _TodoPageState extends State<TodoPage> {

  final List<TodoModel> _todoList = [
    TodoModel(title: 'title1', content: 'content1'),
    TodoModel(title: 'title2', content: 'content2'),
    TodoModel(title: 'title3', content: 'content3'),
    TodoModel(title: 'title1', content: 'content1'),
    TodoModel(title: 'title2', content: 'content2'),
    TodoModel(title: 'title3', content: 'content3'),
    TodoModel(title: 'title1', content: 'content1'),
    TodoModel(title: 'title2', content: 'content2'),
    TodoModel(title: 'title3', content: 'content3'),
    TodoModel(title: 'title1', content: 'content1'),
    TodoModel(title: 'title2', content: 'content2'),
    TodoModel(title: 'title3', content: 'content3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: ListView(
      children: _todoList.map((todo) => listItemWidget(todo),).toList(),
      ),
    );
  }

  Widget listItemWidget(TodoModel todo) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(10),
        color: Colors.red,
          height: 100,
          child: Column(
            children: [
              Text(todo.title),
              Text(todo.content),
            ],
          )),
    );
  }
}
