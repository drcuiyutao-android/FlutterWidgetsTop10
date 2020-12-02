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

const SafeAreaPage = "SafeArea";
const WrapPage = "Wrap";
const RichTextPage = "RichText";
const ClipRRectPage = "ClipRRect";
const MediaQueryPage = "MediaQuery";
const FutureBuilderPage = "FutureBuilder";
const FlexiblePage = "Flexible";
const SizedBoxPage = "SizedBox";
const AlignPage = "Align";
const StackPage = "Stack";

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
      routes: {
        SafeAreaPage: (context) => SafeAreaTest(),
        WrapPage: (context) => WrapTest(),
        RichTextPage: (context) => RichTextTest(),
        ClipRRectPage: (context) => ClipRRectTest(),
        MediaQueryPage: (context) => MediaQueryTest(),
        FutureBuilderPage: (context) => FutureBuilderTest(),
        FlexiblePage: (context) => FlexibleTest(),
        SizedBoxPage: (context) => SizedBoxTest(),
        AlignPage: (context) => AlignTest(),
        StackPage: (context) => StackTest(),
      },
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
              onPressed: () => Navigator.pushNamed(context, SafeAreaPage),
              child: Text("SafeArea Widget"),
            ),
            SizedBox(height: 15),
            FlatButton(
              onPressed: () => Navigator.pushNamed(context, WrapPage),
              child: Text("Wrap Widget"),
            ),
            SizedBox(height: 15),
            FlatButton(
              onPressed: () => Navigator.pushNamed(context, RichTextPage),
              child: Text("RichText Widget"),
            ),
            SizedBox(height: 15),
            FlatButton(
              onPressed: () => Navigator.pushNamed(context, ClipRRectPage),
              child: Text("ClipRRect Widget"),
            ),
            SizedBox(height: 15),
            FlatButton(
              onPressed: () => Navigator.pushNamed(context, MediaQueryPage),
              child: Text("MediaQuery"),
            ),
            SizedBox(height: 15),
            FlatButton(
              onPressed: () => Navigator.pushNamed(context, FutureBuilderPage),
              child: Text("FutureBuilder"),
            ),
            SizedBox(height: 15),
            FlatButton(
              onPressed: () => Navigator.pushNamed(context, FlexiblePage),
              child: Text("Flexible Widget"),
            ),
            SizedBox(height: 15),
            FlatButton(
              onPressed: () => Navigator.pushNamed(context, SizedBoxPage),
              child: Text("SizedBox Widget"),
            ),
            SizedBox(height: 15),
            FlatButton(
              onPressed: () => Navigator.pushNamed(context, AlignPage),
              child: Text("Align Widget"),
            ),
            SizedBox(height: 15),
            FlatButton(
              onPressed: () => Navigator.pushNamed(context, StackPage),
              child: Text("Stack Widget"),
            ),
          ],
        ),
      ),
    );
  }
}

