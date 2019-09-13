import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
                title: Text("Tab A"), icon: Icon(CupertinoIcons.circle)),
            BottomNavigationBarItem(
                title: Text("Tab B"), icon: Icon(CupertinoIcons.bell)),
          ],
        ),
        tabBuilder: (context, index) {
          return CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              middle: Text("Tab $index"),
            ),
            child: Center(
              child: Text("Hello $index"),
            ),
          );
        },
      ),
    );
  }
}
