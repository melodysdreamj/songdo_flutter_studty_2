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

  final List<TodoModel> _todoList = [];
  final _todoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _todoList.length,
              itemBuilder: (context, index) {
                return listItemWidget(_todoList[index]);
              },
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _todoController ,
                  decoration: const InputDecoration(
                    hintText: 'Title',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print(_todoController.text);
                  setState(() {
                    _todoList.add(TodoModel(
                      title: _todoController.text,
                      content: _todoController.text, ));
                  });
                  _todoController.clear();

                },
                child: const Text('Add'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget listItemWidget(TodoModel todo) {
    return Container(
        margin: const EdgeInsets.all(10),
        color: Colors.cyanAccent,
        height: 100,
        child: Column(
          children: [
            Text(todo.title),
            Text(todo.content),
          ],
        ));
  }
}