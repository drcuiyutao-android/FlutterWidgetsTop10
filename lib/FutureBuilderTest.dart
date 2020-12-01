import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FutureBuilderTest extends StatefulWidget {
  FutureBuilderTest({Key key}) : super(key: key);

  @override
  _InnerState createState() => _InnerState();
}

class _InnerState extends State<FutureBuilderTest> {
  bool _showFutureBuildWidget = false;
  Future<dynamic> data;

  Future<dynamic> fetchData() async{
    await Future.delayed(Duration(seconds: 3));
    return http.get('https://www.baidu.com/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FutureBuilder')),
      body: _showFutureBuildWidget ? Center(
        child: Text("点击右下角按钮展示FutureBuilder Widget"),
      ) : FutureBuilder(
        future: fetchData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              return Container(
                alignment: Alignment.center,
                child: Text('loaded success'),
              );
            }
            else {
              return Container(
                alignment: Alignment.center,
                child: Text('error'),
              );
            }
          }
          else {
            return Container(
                alignment: Alignment.center,
                child: CircularProgressIndicator()
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            _showFutureBuildWidget = !_showFutureBuildWidget;
          });
        },
        child: IconButton(icon: Icon(Icons.add),),
      ),
    );
  }
}