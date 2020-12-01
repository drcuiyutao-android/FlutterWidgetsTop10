import 'package:flutter/material.dart';

class SizedBoxTest extends StatefulWidget {
  SizedBoxTest({Key key}) : super(key: key);

  @override
  _InnerState createState() => _InnerState();
}

class _InnerState extends State<SizedBoxTest> {

  bool _visiable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SizedBox')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              color: Colors.blue,
              alignment: Alignment.center,
              child: _visiable ? Text("我是文本，现在能看到我", style: TextStyle(color: Colors.white),) : SizedBox(),
            ),
            SizedBox(height: 100),
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
              padding: EdgeInsets.all(15),
              alignment: Alignment.center,
              child: Text("我是红色区域，两个区域之间的间隔是用SizedBox实现的", style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: IconButton(icon: Icon(_visiable ? Icons.visibility_off : Icons.visibility),),
        onPressed: () {
          setState(() {
            _visiable = !_visiable;
          });
        },
      ),
    );
  }
}
