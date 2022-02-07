import 'package:flutter/material.dart';
import 'package:veripark_project/core/shared/custom.dart';
import 'package:veripark_project/start.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Veri Park Project',
      debugShowCheckedModeBanner: false,
      theme: costumThemeData,
      home: const Start(),
    );
  }
}
