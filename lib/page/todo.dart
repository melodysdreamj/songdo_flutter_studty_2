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
      body: ListView.builder(
        itemCount: _todoList.length,
        itemBuilder: (context, index) {
          return listItemWidget(_todoList[index]);
        },
      ),
    );
  }

  Widget listItemWidget(TodoModel todo) {
    return Expanded(
      child: Container(
          margin: const EdgeInsets.all(10),
          color: Colors.cyanAccent,
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