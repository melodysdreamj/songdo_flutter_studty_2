import 'package:flutter/material.dart';
import 'package:songdo_flutter_studty_2/page/TodoDetailView.dart';

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
  final _todoUpdateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
      children: [
        Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: _todoList.length,
            itemBuilder: (context, index) {
              return listItemCardWidet(_todoList[index]);
            },
            ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
             children: [
              Expanded(
                child: TextField(
                  controller: _todoController ,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Title',
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              Container(
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    print(_todoController.text);
                    if (_todoController.text.isNotEmpty) {
                      setState(() {
                        _todoList.add(TodoModel(title: _todoController.text,
                            content: _todoController.text));
                        _todoController.clear();
                      });
                    }
                  },
                  child: const Text('Add'),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
    );
  }

  Widget listItemCardWidet(TodoModel todo) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.all(10),
      child: ListTile(
        onTap: () async {
          print("onTap");
          _todoUpdateController.text = todo.content;
          var ret = await showDialog(
              context: context, builder: (BuildContext context) {
            return AlertDialog(
              title: Text(todo.title),
              content: Container(
                child: Expanded(
                  child: TextField(
                    controller: _todoUpdateController ,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Title',
                    ),
                  ),
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop('Delete');
                  },
                  child: const Text('Delete'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop('Update');
                  },
                  child: const Text('Update'),
                ),
              ],
            );
          });
          print(ret);
          if (ret == 'Delete') {
            setState(() {
              _todoList.remove(todo);
            });
          } else if (ret == 'Update') {
            setState(() {
              todo.content = _todoUpdateController.text;
            });
          }
        },
        onLongPress: () {
          setState(() {
            print('long press');
            // 페이지 이동
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TodoDetailView(
                        todo: todo,
                    )));
          });
        },
        title: Text(todo.title),
        subtitle: Text(todo.content),
      ),
    );
  }

  Widget listItemWidget(TodoModel todo) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(width: 1, color: Colors.grey),
      ),
      margin: const EdgeInsets.all(10),
      //color: Colors.cyanAccent,
       // height: 100,
        child: Column(
          children: [
            Text(todo.title),
            Text(todo.content),
          ],
        ));
  }
}

