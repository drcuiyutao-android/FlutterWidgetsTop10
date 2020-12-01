import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RichTextTest extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<RichTextTest> {

  @override
  Widget build(BuildContext context) {
    TapGestureRecognizer _recognizer = TapGestureRecognizer();
    _recognizer.onTap = handleTap;
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          color: Colors.white,
        ),
        title: Text("RichText"),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(text: "已阅读并同意", style: TextStyle(color: Colors.grey)),
              TextSpan(
                text: "使用条款和隐私政策",
                recognizer: _recognizer,
                style: TextStyle(
                    color: Colors.redAccent,
                    decoration: TextDecoration.underline),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void handleTap() {
    Fluttertoast.showToast(
        msg: "点击了协议",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1
    );
  }
}
