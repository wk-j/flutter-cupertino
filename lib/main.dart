import 'package:flutter/cupertino.dart';
import 'package:flutter_cupertino/home.dart';

import 'login.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        initialRoute: "/login",
        routes: {
          "/login": (context) => LoginWidget(),
          "/home": (context) => HomeWidget(),
        },
        home: Center(
          child: Text("Hello"),
        ));
  }
}
