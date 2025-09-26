import 'package:flutter/material.dart';
import 'package:widgets_app/ui/core/theme/app_theme.dart';
import 'package:widgets_app/ui/home/screens/home_screen.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatelessWidget {
   MainApp({super.key});

  final appTheme = AppTheme().getTheme();

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: HomeScreen(),
    );
  }
}
