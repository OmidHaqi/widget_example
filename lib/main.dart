import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:widget_simple/res/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color(0xFFCCEEDD),
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Color(0xFFCCEEDD),
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
    return MaterialApp(
      title: 'Widget simple',
      darkTheme: darkTheme(),
      theme: lightTheme(),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

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
                    title: Text(
                      'LayoutBuilder',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    subtitle: Text(
                      'Builds a widget tree that can depend on the parent widget\'s size.',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    trailing: Icon(Icons.build),
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
