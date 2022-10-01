import 'package:flutter/material.dart';
import '../main.dart';
import 'bmi_calculator_page_2.dart';

class BMICalCulatorResult extends StatefulWidget {
  BMICalCulatorResult({
    Key? key,
    required this.bmi,
  }) : super(key: key);
  double bmi;

  @override
  State<BMICalCulatorResult> createState() => _BMICalCulatorResultState();
}

class _BMICalCulatorResultState extends State<BMICalCulatorResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: const Color(0xff00c7ff),
          title: Text('YOUR RESULT'),
          centerTitle: true,
          leading: IconButton(icon: Icon(Icons.keyboard_backspace),
              onPressed: () {
                Navigator.pop(context); //뒤로가기
              }
              ),
      ),
      body: Center(
        child:
        /// //////////////////////////
        _resultWidget(widget.bmi),
        /// //////////////////////////
      ),
    );
  }

  Widget _resultWidget(double bmi) {
    String result_bmi = '';
    Icon icon = const Icon(
      Icons.sentiment_very_dissatisfied,
      size: 108,
      color: Colors.red,
    );

    if (bmi < 18.5) {
      result_bmi = '저체중';
      icon = const Icon(
        Icons.sentiment_neutral_outlined,
        size: 108,
        color: Colors.blue,
      );
    }
      else if (bmi < 23) {
      result_bmi = '정상';
      icon = const Icon(
        Icons.sentiment_very_satisfied,
        size: 108,
        color: Colors.green,
      );
    } else if (bmi < 25) {
      result_bmi = '과체중';
      icon = const Icon(
        Icons.sentiment_neutral_outlined,
        size: 108,
        color: Colors.yellow,
      );
    } else {
      result_bmi = '비만';
      icon = const Icon(
        Icons.sentiment_very_dissatisfied,
        size: 108,
        color: Colors.red,
      );
    }

    if (PIBW < 90) {
      result_PIBW = '저체중';
      icon = const Icon(
        Icons.sentiment_neutral_outlined,
        size: 108,
        color: Colors.blue,
      );
    }
    else if (PIBW < 110) {
      result_PIBW = '정상';
      icon = const Icon(
        Icons.sentiment_very_satisfied,
        size: 108,
        color: Colors.green,
      );
    } else if (PIBW < 120) {
      result_PIBW = '과체중';
      icon = const Icon(
        Icons.sentiment_neutral_outlined,
        size: 108,
        color: Colors.yellow,
      );
    } else if (PIBW < 130) {
      result_PIBW = '경도비만';
      icon = const Icon(
        Icons.sentiment_neutral_outlined,
        size: 108,
        color: Colors.yellow,
      );
    } else if (PIBW < 160) {
      result_PIBW = '중정도비만';
      icon = const Icon(
        Icons.sentiment_neutral_outlined,
        size: 108,
        color: Colors.yellow,
      );
    }
    else {
      result_PIBW = '고도비만';
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
          '신체질량지수(BMI)는 ${bmi.toStringAsFixed(1)}로\n$result_bmi 입니다.\n',
          style: const TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ),
        Text(
          '비만도(PIBW)는 ${PIBW.toStringAsFixed(1)}로\n$result_PIBW 입니다.',
          style: const TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 32),
        icon,
      ],
    );
  }
}

main() {
  runApp(MaterialApp(home: BMICalCulatorResult(bmi: 31,),));
}

