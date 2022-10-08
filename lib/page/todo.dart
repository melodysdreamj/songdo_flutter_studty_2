class TodoPage extends StatefulWidget {
  const TodoPage ({Key? key}) : super(key: key);


  @override
  State<BMIPage2> createState() => _BMIPage2State();
}
enum Gender {MAN,WOMEN}

class _BMIPage2State extends State<BMIPage2> {
  TextEditingController heightController = TextEditingController();
  TextEditingController wightController = TextEditingController();

  Gender _gender = Gender.MAN;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[

          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: heightController,
              keyboardType: TextInputType.number,
              cursorColor: Colors.red,
              decoration: InputDecoration(
                  hintText: "170",
                  labelText: "키",
                  border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: wightController,
              keyboardType: TextInputType.number,
              cursorColor: Colors.red,
              decoration: InputDecoration(
                  hintText: "70",
                  labelText: "몸무게",
                  border: OutlineInputBorder()),
            ),

          ),
          RadioListTile(
            title: Text('남자'),
            value: Gender.MAN,
            groupValue: _gender,
            onChanged: (value) {
              setState(() {
                sex = 0;
                _gender = value!;
              });
            },
          ),
          RadioListTile(
            title: Text('여자'),
            value: Gender.WOMEN,
            groupValue: _gender,
            onChanged: (value) {
              setState(() {
                sex = 1;
                _gender = value!;
              });
            },
          ),

          ElevatedButton(
            onPressed: () {
              String heightString = heightController.text;
              String wightString = wightController.text;

              int height = int.tryParse(heightString) ?? 0;
              int weight = int.tryParse(wightString) ?? 0;

              bmi = weight / ((height / 100) * (height / 100));

              if(sex == 0) {
                StandardWeight = (height / 100) * (height / 100) * 22;
              }
              else {
                StandardWeight = (height / 100) * (height / 100) * 21;
              }

              PIBW = (weight / StandardWeight) * 100;

              print("bmi:$bmi");
              print("PIBW:$PIBW");

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BMICalCulatorResult(bmi: bmi),
                ),
              );
            },
            child: Text("계산"),
          ),
        ],
      ),
    );
  }
}