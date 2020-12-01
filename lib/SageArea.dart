import 'package:flutter/material.dart';

class SafeAreaTest extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SafeAreaTest> {

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
        title: Text("SafeArea"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Data Data Data Data Data Data Data Data',
              ),
              SizedBox(height: 20),
              Text(
                'Data Data Data Data Data Data Data Data',
              ),
              SizedBox(height: 20),
              Text(
                'Data Data Data Data Data Data Data Data',
              ),
              SizedBox(height: 20),
              Text(
                'Data Data Data Data Data Data Data Data',
              ),
              SizedBox(height: 20),
              Text(
                'Data Data Data Data Data Data Data Data',
              ),
              SizedBox(height: 20),
              Text(
                'Data Data Data Data Data Data Data Data',
              ),
              SizedBox(height: 20),
              Text(
                'Data Data Data Data Data Data Data Data',
              ),
              SizedBox(height: 20),
              Text(
                'Data Data Data Data Data Data Data Data',
              ),
              SizedBox(height: 20),
              Text(
                'Data Data Data Data Data Data Data Data',
              ),
              SizedBox(height: 20),
              Text(
                'Data Data Data Data Data Data Data Data',
              ),
              SizedBox(height: 20),
              Text(
                'Data Data Data Data Data Data Data Data',
              ),
              SizedBox(height: 20),
              Text(
                'Data Data Data Data Data Data Data Data',
              ),
              SizedBox(height: 20),
              Text(
                'Data Data Data Data Data Data Data Data',
              ),
              SizedBox(height: 20),
              Text(
                'Data Data Data Data Data Data Data Data',
              ),
              SizedBox(height: 20),
              Text(
                'Data Data Data Data Data Data Data Data',
              ),
              SizedBox(height: 20),
              Text(
                'Data Data Data Data Data Data Data Data',
              ),
              SizedBox(height: 20),
              Text(
                'Data Data Data Data Data Data Data Data',
              ),
              SizedBox(height: 20),
              Text(
                'Data Data Data Data Data Data Data Data',
              ),
              SizedBox(height: 20),
              Text(
                'Data Data Data Data Data Data Data Data',
              ),
              SizedBox(height: 20),
              Text(
                'Data Data Data Data Data Data Data Data',
              ),
              SizedBox(height: 20),
              Text(
                'Data Data Data Data Data Data Data Data',
              ),
              SizedBox(height: 20),
              Text(
                'Data Data Data Data Data Data Data Data',
              ),
              SizedBox(height: 20),
              Text(
                'Data Data Data Data Data Data Data Data',
              ),
              SizedBox(height: 20),
              Text(
                'Data Data Data Data Data Data Data Data',
              ),
              SizedBox(height: 20),
              Text(
                'Data Data Data Data Data Data Data Data',
              ),
              SizedBox(height: 20),
              Text(
                'Data Data Data Data Data Data Data Data',
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
