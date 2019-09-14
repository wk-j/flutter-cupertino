import 'package:flutter/cupertino.dart';

class SettingWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new SettingState();
  }
}

class SettingState extends State<SettingWidget> {
  TextEditingController _controller;

  Widget _buildUserField() {
    return CupertinoTextField(
      controller: _controller,
      prefix: Icon(
        CupertinoIcons.settings,
        color: CupertinoColors.lightBackgroundGray,
        size: 28,
      ),
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 12),
      clearButtonMode: OverlayVisibilityMode.editing,
      keyboardType: TextInputType.text,
      autocorrect: false,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0,
            color: CupertinoColors.inactiveGray,
          ),
        ),
      ),
      placeholder: 'Endpoint',
    );
  }

  Widget _buildControls() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CupertinoButton(
          child: Text("Logout"),
          onPressed: () {
            Navigator.pushNamed(context, "/login");
          },
        )
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: "http://localhost:8080");
  }

  @override
  Widget build(BuildContext context) {
    return new CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Settings"),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              _buildUserField(),
              _buildControls(),
            ],
          ),
        ),
      ),
    );
  }
}
