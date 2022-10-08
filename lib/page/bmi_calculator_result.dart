import 'package:flutter/material.dart';

class BMICalCulatorResult extends StatefulWidget {
  BMICalCulatorResult({
    Key? key,
    required this.bmi,
    this.height = 0,
    this.weight  = 0,
    this.gender = "",
  }) : super(key: key);

  double bmi;
  int height;
  int weight;
  String gender;

  @override
  State<BMICalCulatorResult> createState() => _BMICalCulatorResultState();
}

class _BMICalCulatorResultState extends State<BMICalCulatorResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        /// //////////////////////////
        _resultWidget(widget.bmi),
        /// //////////////////////////
      ),
    );
  }

  Widget _resultWidget(double bmi) {
    String result = '';
    Icon icon = const Icon(
      Icons.sentiment_very_dissatisfied,
      size: 108,
      color: Colors.red,
    );
    if (bmi < 20) {
      result = '저체중';
      icon = const Icon(
        Icons.sentiment_neutral_outlined,
        size: 108,
        color: Colors.blue,
      );
    } else if (bmi < 24) {
      result = '정상';
      icon = const Icon(
        Icons.sentiment_very_satisfied,
        size: 108,
        color: Colors.green,
      );
    } else if (bmi < 30) {
      result = '과체중';
      icon = const Icon(
        Icons.sentiment_neutral_outlined,
        size: 108,
        color: Colors.yellow,
      );
    } else {
      result = '비만';
      icon = const Icon(
        Icons.sentiment_very_dissatisfied,
        size: 108,
        color: Colors.red,
      );
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '신체질량지수(BMI)는 ${bmi.toStringAsFixed(1)}로\n$result 입니다.',
          style: const TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 32),
        icon,
      ],
    );
  }
}
