import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _myAppState();
  }
}

class _myAppState extends State<MyApp> {
  var questions = ["Who won the IPL 2023?", "What is your name?"];
  var questionIdx = 0;

  void getAnswer(String answer) {
    if (questions.length > questionIdx+1) {
      setState(() {
        questionIdx += 1;
      });
    }
  }

  // var getAnswer = (answer) => {
  //       if (answer == "CSK")
  //         {print("Correct answer")}
  //       else
  //         {print("Wrong answer")}
  //     };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Demo"),
          ),
          body: Column(children: <Widget>[
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      questions[questionIdx],
                      style: TextStyle(fontSize: 25),
                    )),
              ],
            ),
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.all(15),
                    child: ElevatedButton(
                        onPressed: () => (getAnswer("Answer 1")),
                        child: Text("Answer 1"))),
                Padding(
                    padding: EdgeInsets.all(15),
                    child: ElevatedButton(
                        onPressed: () => (getAnswer("Answer 2")),
                        child: Text("Answer 2"))),
                Padding(
                    padding: EdgeInsets.all(15),
                    child: ElevatedButton(
                        onPressed: () => (getAnswer("Answer 3")),
                        child: Text("Answer 3"))),
              ],
            ),
          ])),
    );
  }
}
