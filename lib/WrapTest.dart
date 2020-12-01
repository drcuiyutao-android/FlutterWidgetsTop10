import 'package:flutter/material.dart';

class WrapTest extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<WrapTest> {

  void pop(){
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          color: Colors.white,
        ),
        title: Text("WrapTest"),
      ),
      body: Center(
        child: Wrap(
          alignment: WrapAlignment.center,
          children: <Widget>[
            SizedBox(width: 20),
            Text(
              'aaaaaa',
            ),
            SizedBox(width: 20),
            Text(
              'bbbbbb',
            ),
            SizedBox(width: 20),
            Text(
              'cccccc',
            ),
            SizedBox(width: 20),
            Text(
              'dddddd',
            ),
            SizedBox(width: 20),
            Text(
              'eeeeee',
            ),
            SizedBox(width: 20),
            Text(
              'ffffff',
            ),
            SizedBox(width: 20),
            Text(
              'gggggg',
            ),
            SizedBox(width: 20),
            Text(
              'hhhhhh',
            ),
            SizedBox(width: 20),
            Text(
              'iiiiii',
            ),
            SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
