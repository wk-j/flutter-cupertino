import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cupertino/circle_image.dart';

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
  var _searching = false;

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
    Item("UIActivityType.postToFacebook", "Xcode build done"),
    Item("UIActivityType.postToTwitter", "Xcode build done"),
    Item("UIActivityType.postToWeibo,", "Xcode build done"),
    Item(
        "I've been trying to find out a solution for several hours. I presented UIDocumentInteractionController, SFSafariViewController, UIActivityViewController, QLPreviewController. ",
        "Xcode build done"),
  ];

  Widget createSearchBar(searching) => searching
      ? CupertinoNavigationBar(
          leading: GestureDetector(
            child: Icon(
              CupertinoIcons.search,
              color: Colors.grey,
            ),
          ),
          middle: CupertinoTextField(),
          trailing: GestureDetector(
            child: Icon(
              CupertinoIcons.delete,
              color: Colors.grey,
            ),
            onTap: () {
              setState(() {
                _searching = false;
              });
            },
          ),
        )
      : CupertinoNavigationBar(
          leading: GestureDetector(
            child: Icon(
              CupertinoIcons.search,
              color: Colors.grey,
            ),
            onTap: () {
              setState(() {
                _searching = true;
                debugPrint("searching - $_searching");
              });
            },
          ),
          middle: Text("Home"),
          trailing: GestureDetector(
            child: Icon(
              CupertinoIcons.settings,
              color: Colors.grey,
            ),
            onTap: () {
              Navigator.pushNamed(context, "/settings");
            },
          ),
        );

  @override
  Widget build(BuildContext context) {
    var items = _groupValue == 0 ? items1 : items2;

    return CupertinoPageScaffold(
      navigationBar: createSearchBar(_searching),
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
                            leading: CircleImage(
                              "assets/pdf.png",
                              width: 40,
                              height: 40,
                            ),
                            title: Text(f.title),
                            subtitle: Text(f.subTitle),
                            trailing: Icon(CupertinoIcons.book),
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
