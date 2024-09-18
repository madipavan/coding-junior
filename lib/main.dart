import 'package:codingjunior/core/theme/app_theme.dart';
import 'package:codingjunior/presantation/tabscreen/tab_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lighttheme,
      title: "Coding junior",
      debugShowCheckedModeBanner: false,
      home: const TabScreen(),
    );
  }
}
