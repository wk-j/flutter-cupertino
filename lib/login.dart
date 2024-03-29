import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_cupertino/circle_image.dart';

class LoginWidget extends StatefulWidget {
  @override
  State<LoginWidget> createState() {
    return _LoginState();
  }
}

class _LoginState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    Widget _buildEmailField() {
      return const CupertinoTextField(
        prefix: Icon(
          CupertinoIcons.person,
          // color: CupertinoColors.lightBackgroundGray,
          size: 28,
        ),
        padding: EdgeInsets.symmetric(horizontal: 6, vertical: 12),
        clearButtonMode: OverlayVisibilityMode.editing,
        keyboardType: TextInputType.emailAddress,
        autocorrect: false,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0,
              color: CupertinoColors.inactiveGray,
            ),
          ),
        ),
        placeholder: 'User',
      );
    }

    Widget _buildUserField() {
      return const CupertinoTextField(
        prefix: Icon(
          CupertinoIcons.padlock,
          // color: CupertinoColors.lightBackgroundGray,
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
        placeholder: 'Password',
      );
    }

    Widget _createImage() => CircleImage("assets/user.png");

    Widget _buildControls() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CupertinoButton(
            child: Text("Cancel"),
            onPressed: () {},
          ),
          CupertinoButton(
            child: Text("Login"),
            onPressed: () {
              Navigator.pushNamed(context, "/home");
            },
          )
        ],
      );
    }

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Icon(CupertinoIcons.home),
        middle: Text("Login"),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _createImage(),
            SizedBox(height: 20),
            _buildEmailField(),
            _buildUserField(),
            _buildControls(),
            SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}
