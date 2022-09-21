import 'package:flutter/material.dart';
import 'package:pavillion_rewards/presentation/screens/skeleton.dart';

class MyApp extends StatefulWidget {
  MyApp._internal();

  static get instance => MyApp._internal();

  factory MyApp() => instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      home: Skeleton(),
    );
  }
}
