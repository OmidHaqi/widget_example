import 'package:flutter/material.dart';

class LayOutBuilder extends StatelessWidget {
  const LayOutBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth<650 ) {
        return const SafeArea(
          child: Scaffold(
            body: Center(
              child: Text("Mobile"),
            ),
          ),
        );
      } else if(constraints.maxWidth <1100 && constraints.maxWidth>=650) {
        return const SafeArea(
          child: Scaffold(
            body: Center(
              child: Text("Tablet"),
            ),
          ),
        );
      }else{
        return const SafeArea(
          child: Scaffold(
            body: Center(
              child: Text("Desktop"),
            ),
          ),
        );
      }
    });
  }
}
