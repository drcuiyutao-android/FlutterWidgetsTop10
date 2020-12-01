import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_top10/Align.dart';
import 'package:flutter_app_top10/ClipRRect.dart';
import 'package:flutter_app_top10/Flexible.dart';
import 'package:flutter_app_top10/FutureBuilderTest.dart';
import 'package:flutter_app_top10/MediaQuery.dart';
import 'package:flutter_app_top10/RichTextTest.dart';
import 'package:flutter_app_top10/SageArea.dart';
import 'package:flutter_app_top10/SizedBox.dart';
import 'package:flutter_app_top10/StackTest.dart';
import 'package:flutter_app_top10/WrapTest.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Widget Top 10"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () => gotoSafeAreaPage(context),
              child: Text("SafeArea Widget"),
            ),
            SizedBox(height: 15),
            FlatButton(
              onPressed: () => gotoWrapPage(context),
              child: Text("Wrap Widget"),
            ),
            SizedBox(height: 15),
            FlatButton(
              onPressed: () => gotoRichTextPage(context),
              child: Text("RichText Widget"),
            ),
            SizedBox(height: 15),
            FlatButton(
              onPressed: () => gotoClipRRectPage(context),
              child: Text("ClipRRect Widget"),
            ),
            SizedBox(height: 15),
            FlatButton(
              onPressed: () => gotoMediaQueryPage(context),
              child: Text("MediaQuery"),
            ),
            SizedBox(height: 15),
            FlatButton(
              onPressed: () => gotoFutureBuilderPage(context),
              child: Text("FutureBuilder"),
            ),
            SizedBox(height: 15),
            FlatButton(
              onPressed: () => gotoFlexiblePage(context),
              child: Text("Flexible Widget"),
            ),
            SizedBox(height: 15),
            FlatButton(
              onPressed: () => gotoSizedBoxPage(context),
              child: Text("SizedBox Widget"),
            ),
            SizedBox(height: 15),
            FlatButton(
              onPressed: () => gotoAlignPage(context),
              child: Text("Align Widget"),
            ),
            SizedBox(height: 15),
            FlatButton(
              onPressed: () => gotoStackPage(context),
              child: Text("Stack Widget"),
            ),
          ],
        ),
      ),
    );
  }
}

void gotoSafeAreaPage(BuildContext context) {
  Navigator.push(context, CupertinoPageRoute(builder: (context) {
    return SafeAreaTest();
  }));
}

void gotoWrapPage(BuildContext context) {
  Navigator.push(context, CupertinoPageRoute(builder: (context) {
    return WrapTest();
  }));
}

void gotoRichTextPage(BuildContext context) {
  Navigator.push(context, CupertinoPageRoute(builder: (context) {
    return RichTextTest();
  }));
}

void gotoClipRRectPage(BuildContext context) {
  Navigator.push(context, CupertinoPageRoute(builder: (context) {
    return ClipRRectTest();
  }));
}

void gotoMediaQueryPage(BuildContext context) {
  Navigator.push(context, CupertinoPageRoute(builder: (context) {
    return MediaQueryTest();
  }));
}

void gotoFutureBuilderPage(BuildContext context) {
  Navigator.push(context, CupertinoPageRoute(builder: (context) {
    return FutureBuilderTest();
  }));
}

void gotoFlexiblePage(BuildContext context) {
  Navigator.push(context, CupertinoPageRoute(builder: (context) {
    return FlexibleTest();
  }));
}

void gotoSizedBoxPage(BuildContext context) {
  Navigator.push(context, CupertinoPageRoute(builder: (context) {
    return SizedBoxTest();
  }));
}

void gotoAlignPage(BuildContext context) {
  Navigator.push(context, CupertinoPageRoute(builder: (context) {
    return AlignTest();
  }));
}

void gotoStackPage(BuildContext context) {
  Navigator.push(context, CupertinoPageRoute(builder: (context) {
    return StackTest();
  }));
}
