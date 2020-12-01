import 'package:flutter/material.dart';

class MediaQueryTest extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MediaQueryTest> {

  @override
  Widget build(BuildContext context) {
    //屏幕方向
    Orientation _orientation = MediaQuery.of(context).orientation;
    //屏幕大小
    Size _size = MediaQuery.of(context).size;
    //密度
    double _ratio = MediaQuery.of(context).devicePixelRatio;
    //设备像素
    double _width = _size.width * _ratio;
    double _height = _size.height * _ratio;

    // 上下边距 （主要用于 刘海  和  内置导航键）
    double _topPadding = MediaQuery.of(context).padding.top;
    double _bottomPadding = MediaQuery.of(context).padding.bottom;

    double _textScaleFactor = MediaQuery.of(context).textScaleFactor;
    Brightness _platformBrightness = MediaQuery.of(context).platformBrightness;
    EdgeInsets _viewInsets = MediaQuery.of(context).viewInsets;
    EdgeInsets _padding = MediaQuery.of(context).padding;
    bool _alwaysUse24HourFormat = MediaQuery.of(context).alwaysUse24HourFormat;
    bool _accessibleNavigation = MediaQuery.of(context).accessibleNavigation;
    bool _invertColors = MediaQuery.of(context).invertColors;
    bool _disableAnimations = MediaQuery.of(context).disableAnimations;
    bool _boldText = MediaQuery.of(context).boldText;
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          color: Colors.white,
        ),
        title: Text("MediaQuery"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _orientation == Orientation.landscape ?
            Text("当前：横屏") : Text("当前：竖屏"),
            SizedBox(height: 15),
            Text("屏幕大小（${_size.width},${_size.height}）dp"),
            SizedBox(height: 15),
            Text("像素密度：$_ratio"),
            SizedBox(height: 15),
            Text("设备像素 $_width x $_height"),
            SizedBox(height: 15),
            Text("上边距：$_topPadding"),
            SizedBox(height: 15),
            Text("下边距：$_bottomPadding"),
            SizedBox(height: 15),
            Text("textScaleFactor：$_textScaleFactor"),
            SizedBox(height: 15),
            Text("platformBrightness：$_platformBrightness"),
            SizedBox(height: 15),
            Text("viewInsets：(${_viewInsets.left}, ${_viewInsets.top}, ${_viewInsets.right}, ${_viewInsets.bottom})"),
            SizedBox(height: 15),
            Text("padding：(${_padding.left}, ${_padding.top}, ${_padding.right}, ${_padding.bottom})"),
            SizedBox(height: 15),
            _alwaysUse24HourFormat ?
            Text("alwaysUse24HourFormat：true") : Text("alwaysUse24HourFormat：false"),
            SizedBox(height: 15),
            _accessibleNavigation?
            Text("accessibleNavigation：true") : Text("accessibleNavigation：false"),
            SizedBox(height: 15),
            _invertColors?
            Text("invertColors：true") : Text("invertColors：false"),
            SizedBox(height: 15),
            _disableAnimations?
            Text("disableAnimations：true") : Text("disableAnimations：false"),
            SizedBox(height: 15),
            _boldText?
            Text("boldText：true") : Text("boldText：false"),
          ],
        ),
      ),
    );
  }
}
