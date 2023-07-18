import 'package:birthday_app/presentation/screens/main/main_screen.dart';
import 'package:birthday_app/utils/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Birthday App',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: const MainScreenWidget(),
    );
  }
}
