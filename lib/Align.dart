import 'package:flutter/material.dart';

class AlignTest extends StatefulWidget {
  AlignTest({Key key}) : super(key: key);

  @override
  _InnerState createState() => _InnerState();
}

class _InnerState extends State<AlignTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Align')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              color: Colors.lightGreen,
              child:
              Align(
                  alignment: Alignment.bottomRight,
                  child: FlutterLogo()
              ),
            ),
            SizedBox(height: 100,),
            Container(
              color: Colors.lightGreen,
              child:
              Align(
                  widthFactor: 10,
                  heightFactor:2,
                  alignment: Alignment.center,
                  child: Container(
                    width: 20,
                    height: 20,
                    color: Colors.lightBlueAccent,
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
