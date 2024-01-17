import 'package:flutter/material.dart';

class LayOutBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth < 600) {
        return SafeArea(
          child: Scaffold(
            body: Center(
              child: Text("Hello I\'m using LayoutBuilder maxWidth < 600 for show in mobile or table"),
            ),
          ),
        );
      } else {
        return SafeArea(
          child: Scaffold(
            body: Center(
              child: Text("Hello I\'m using LayoutBuilder maxWidth > 600 for show in web"),
            ),
          ),
        );
      }
    });
  }
}
