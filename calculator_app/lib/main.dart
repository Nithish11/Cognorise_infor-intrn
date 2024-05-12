import "package:calculator_app/home.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}
