///
/// flutter_study
/// File Name: counter_page
/// Created by sujangmac on 2022/09/19
///
/// Description:
///
import 'package:flutter/material.dart';

///
/// flutter_study
/// File Name: counter_page
/// Created by sujangmac on 2022/09/03
///
/// Description:
///
class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _initCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _counter <= 0 ? 'Plz add me 😭 :' : 'Goood! 😎 :',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: 'btn1',
            onPressed: _incrementCounter,
            child: const Icon(Icons.exposure_plus_1),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            heroTag: 'btn2',
            onPressed: _decrementCounter,
            child: const Icon(Icons.exposure_minus_1),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            heroTag: 'btn3',
            onPressed: _initCounter,
            child: const Icon(Icons.exposure_zero_rounded),
          ),
          const SizedBox(height: 16),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
