import 'dart:ui';

import 'package:final_fantasy_viii_list/theme/app_colors.dart';
import 'package:flutter/material.dart';

class BlurContainer extends StatelessWidget {
  const BlurContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
        child: Container(child: child),
      ),
    );
  }
}
