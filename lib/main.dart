import 'package:flutter/cupertino.dart';

import 'login.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: LoginWidget(),
    );
  }
}
