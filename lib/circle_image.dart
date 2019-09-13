import 'package:flutter/cupertino.dart';

class CircleImage extends StatelessWidget {
  final String path;
  final double width;
  final double height;
  CircleImage(this.path, {this.width = 190, this.height = 190});

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: this.width,
      height: height,
      decoration: new BoxDecoration(
        shape: BoxShape.circle,
        image: new DecorationImage(
          fit: BoxFit.fill,
          image: new AssetImage(path),
        ),
      ),
    );
  }
}
