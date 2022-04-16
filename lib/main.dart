import 'package:flutter/material.dart';
import 'views/home/home_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'The Wash Groom',
        theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Lovelo'),
        initialRoute: '/',
        routes: {
          '/': (context) => HomeContentDesktop(),
        });
  }
}
