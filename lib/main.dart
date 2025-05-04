import 'package:bloc_project3/bloc_provider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => child!,
      debugShowCheckedModeBanner: false,
      title: "Fetch Api",

      home: BlocProviderPage(),
    );
  }
}
