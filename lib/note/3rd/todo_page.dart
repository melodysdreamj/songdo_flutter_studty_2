import 'package:flutter/material.dart';
import 'package:songdo_flutter_studty_2/model/todo_model.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {

  final List<TodoModel> _todoList = [];
  final _todoController = TextEditingController();

  final l1 = [];
  final l2 = ['string'];
  final l3 = <String>[];

  Set<String> s1 = {};

  Map<String, TodoModel> map1 = {};
  var map2 = { 'a' : TodoModel() };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        children: [
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: _todoList.map((todo) => Card(
                elevation: 5,
                margin: const EdgeInsets.all(10),
                child: ListTile(
                  title: Text(todo.title),
                  subtitle: Text(todo.content),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: (){
                      setState(() {
                        _todoList.remove(todo);
                      });
                    },
                  ),
                ),
              )).toList(),
            ),
            // child: ListView.builder(
            //   physics: const BouncingScrollPhysics(),
            //   itemCount: _todoList.length,
            //   itemBuilder: (context, index) {
            //     return Card(
            //       elevation: 5,
            //       margin: const EdgeInsets.all(10),
            //       child: ListTile(
            //         leading: Checkbox(
            //           value: _todoList[index].isDone,
            //           onChanged: (value) {
            //             setState(() {
            //               _todoList[index].isDone = value!;
            //             });
            //           },
            //         ),
            //         title: Text(_todoList[index].title,
            //             style: _todoList[index].isDone ? const TextStyle(decoration: TextDecoration.lineThrough) : null,
            //         ),
            //         subtitle: Text(_todoList[index].content,
            //           style: _todoList[index].isDone ? const TextStyle(decoration: TextDecoration.lineThrough) : null,
            //         ),
            //         trailing: IconButton(
            //           icon: Icon(Icons.delete),
            //
            //           onPressed: () {
            //             _todoList.removeAt(index);
            //             setState(() {});
            //           },
            //         ),
            //         onLongPress: () async {
            //           final item = _todoList[index].title;
            //           final result = await showDialog<String>(
            //             context: context,
            //             builder: (context) => _TODOListCustomDialog(item: item),
            //           );
            //           setState(() {
            //             if (result == 'Delete') {
            //               _todoList.removeAt(index);
            //             } else {
            //               print(result);
            //               _todoList[index].title = result ?? '';
            //             }
            //           });
            //         },
            //
            //       ),
            //     );
            //   },
            // ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _todoController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: '할일 입력'),
                  ),
                ),
                const SizedBox(width: 16),
                SizedBox(
                  width: 72,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _todoList.add(TodoModel(
                            title: _todoController.text,
                            content: _todoController.text,
                            isDone: false));
                        _todoController.clear();
                      });
                    },
                    child: const Text('add'),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //         builder: (context) => TodoAddPage(),
      //       ),
      //     ).then((value) {
      //       if (value != null) {
      //          setState(() {
      //            _todoList.add(value);
      //          });
      //       }
      //     });
      //   },
      //   child: Icon(Icons.add),
      // ),
    );
  }
}



class _TODOListCustomDialog extends StatefulWidget {
  const _TODOListCustomDialog({Key? key, required this.item}) : super(key: key);

  final String item;

  @override
  State<_TODOListCustomDialog> createState() => _TODOListCustomDialogState();
}

class _TODOListCustomDialogState extends State<_TODOListCustomDialog> {
  late TextEditingController _itemController;

  @override
  void initState() {
    super.initState();
    _itemController = TextEditingController(text: widget.item);
  }

  @override
  Widget build(BuildContext context) => AlertDialog(
    title: const Text('할일 수정/삭제'),
    content: TextFormField(
      controller: _itemController,
    ),
    actions: <Widget>[
      TextButton(
        onPressed: () => Navigator.pop(context, 'Delete'),
        child: const Text('Delete', style: TextStyle(color: Colors.red)),
      ),
      TextButton(
        onPressed: () => Navigator.pop(context, _itemController.text),
        child: const Text('Update'),
      ),
    ],
  );
}
