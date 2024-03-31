import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_simple/widgets/layout_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Widgets",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => LayOutBuilder(),
                        ),
                      );
                    },
                    title: Text(
                      'LayoutBuilder',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    subtitle: Text(
                      'Builds a widget tree that can depend on the parent widget\'s size.',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    trailing: const Icon(Icons.build),
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
