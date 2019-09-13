import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          color: CupertinoColors.lightBackgroundGray,
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
          color: CupertinoColors.lightBackgroundGray,
          size: 28,
        ),
        padding: EdgeInsets.symmetric(horizontal: 6, vertical: 12),
        clearButtonMode: OverlayVisibilityMode.editing,
        keyboardType: TextInputType.visiblePassword,
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

    Widget _createImage() {
      return new Container(
        width: 190.0,
        height: 190.0,
        decoration: new BoxDecoration(
          shape: BoxShape.circle,
          image: new DecorationImage(
            fit: BoxFit.fill,
            image: new AssetImage("assets/user.png"),
          ),
        ),
      );
    }

    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("Login"),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _createImage(),
              SizedBox(
                height: 20,
              ),
              _buildEmailField(),
              _buildUserField(),
            ],
          ),
        ));
  }
}
