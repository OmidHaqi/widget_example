import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:widget_simple/view/home_page.dart';
import 'package:widget_simple/res/themes.dart';

void main(){
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
      home: const HomePage(),
    );
  }
}
