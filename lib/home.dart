import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<HomeWidget> {
  var _groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Home"),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Center(
              child: SizedBox(
                width: 300,
                child: CupertinoSegmentedControl<int>(
                  children: {
                    0: Text("เอกสารคุณภาพ"),
                    1: Text("My files"),
                  },
                  onValueChanged: (v) {
                    setState(() {
                      _groupValue = v;
                    });
                  },
                  groupValue: _groupValue,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Card(
                    child: ListTile(
                      leading: FlutterLogo(),
                      title: Text('One-line with leading widget'),
                      subtitle: Text("2 month ago 314.5 KB"),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: FlutterLogo(),
                      title: Text('One-line with leading widget'),
                      subtitle: Text("2 month ago 314.5 KB"),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      leading: FlutterLogo(),
                      title: Text('One-line with leading widget'),
                      subtitle: Text("2 month ago 314.5 KB"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
