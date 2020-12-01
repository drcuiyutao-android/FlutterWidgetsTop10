import 'package:flutter/material.dart';

class StackTest extends StatefulWidget {
  StackTest({Key key}) : super(key: key);

  @override
  _InnerState createState() => _InnerState();
}

class _InnerState extends State<StackTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stack')),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.black,
          child: Stack(
            children: <Widget>[
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
              ),
              Container(
                width: 90,
                height: 90,
                color: Colors.blue,
              ),
              Container(
                width: 80,
                height: 80,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
