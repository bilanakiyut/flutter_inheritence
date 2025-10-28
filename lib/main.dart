import 'package:flutter/material.dart';
import 'package:tugas_pbo_inheritance/latihan/kue_inheritance_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Latihan Inheritance Penerapan",
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: KueInheritanceWidget(),
    );
  }
}
