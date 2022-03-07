import 'package:flutter/material.dart';
import 'package:hemo_app/widgets/screens/addmodule.dart';
import 'package:hemo_app/widgets/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: 'Raleway',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/addModule': (context) => const AddModule(),
      },
    );
  }
}
