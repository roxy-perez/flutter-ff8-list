import 'package:final_fantasy_viii_list/src/pages/home_page.dart';
import 'package:final_fantasy_viii_list/theme/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Final Fantasy XVIII',
      theme: ThemeData(primaryColor: AppColors.darkBlue),
      home: const HomePage(),
    );
  }
}
