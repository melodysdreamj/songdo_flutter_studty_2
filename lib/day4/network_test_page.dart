import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NetworkTestPage extends StatefulWidget {
  const NetworkTestPage({Key? key}) : super(key: key);

  @override
  State<NetworkTestPage> createState() => _NetworkTestPageState();
}

class _NetworkTestPageState extends State<NetworkTestPage> {


  Future? futureData;

  getData() {
    setState((){
      futureData = Dio().get('https://test.bbear.kr/attendance/delay');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          FutureBuilder(
            future: futureData,
            builder: (context, snapshot){
              if(snapshot.hasData){
                return Text(snapshot.data?.toString() ?? '데이터 없음');
              }
              else {
                return CircularProgressIndicator();
              }
            },
          ),
          ElevatedButton(onPressed: (){
            getData();
          }, child: Text('받아오기')),
        ],
      ),
    );
  }
}
