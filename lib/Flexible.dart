import 'package:flutter/material.dart';

class FlexibleTest extends StatefulWidget {
  FlexibleTest({Key key}) : super(key: key);

  @override
  _InnerState createState() => _InnerState();
}

class _InnerState extends State<FlexibleTest> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flexible')),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text("我是左边的文案......"),
                  Flexible(
                    child: Container(
                      width: 50,
                      color: Colors.blue,
                      child: Text("Flexible我是右边的文案......"),
                    ),
                  )
                ],
              ),
              SizedBox(height: 100),
              Row(
                children: <Widget>[
                  Text("我是左边的文案......"),
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                      width: 50,
                      child: Text("Expanded我是右边的文案......"),
                    ),
                  ),
                ],
              ),
            ],
          ),
      ),
    );
  }
}
