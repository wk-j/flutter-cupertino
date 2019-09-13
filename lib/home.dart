import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'pdf_logo.dart';

class HomeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class Item {
  final String title;
  final String subTitle;
  Item(this.title, this.subTitle);
}

class HomeState extends State<HomeWidget> {
  var _groupValue = 0;

  var items1 = [
    Item("To hot reload changes", "Xcode build done"),
    Item("To hot reload changes", "Xcode build done"),
    Item("To hot reload changes", "Xcode build done"),
    Item("To hot reload changes", "Xcode build done"),
    Item("To hot reload changes", "Xcode build done"),
    Item("To hot reload changes", "Xcode build done"),
    Item("To hot reload changes", "Xcode build done"),
    Item("To hot reload changes", "Xcode build done"),
    Item("To hot reload changes", "Xcode build done"),
    Item("To hot reload changes", "Xcode build done"),
    Item("To hot reload changes", "Xcode build done"),
    Item("To hot reload changes", "Xcode build done"),
    Item("To hot reload changes", "Xcode build done"),
    Item("To hot reload changes", "Xcode build done"),
    Item("To hot reload changes", "Xcode build done"),
  ];

  var items2 = [
    Item("To hot reload changes 1", "Xcode build done"),
    Item("To hot reload changes 1", "Xcode build done"),
    Item("To hot reload changes 1", "Xcode build done"),
    Item("To hot reload changes 1", "Xcode build done"),
  ];

  @override
  Widget build(BuildContext context) {
    var items = _groupValue == 0 ? items1 : items2;

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
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: ListView(
                  children: items
                      .map(
                        (f) => Card(
                          child: ListTile(
                            leading: PdfLogo(),
                            title: Text(f.title),
                            subtitle: Text(f.subTitle),
                            trailing: Icon(Icons.add_comment),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
