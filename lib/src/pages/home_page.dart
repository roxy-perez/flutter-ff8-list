import 'package:final_fantasy_viii_list/src/widgets/header.dart';
import 'package:final_fantasy_viii_list/theme/app_colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.fullDarkBlue,
      body: Column(children: [HeaderWidget()]),
    );
  }
}
