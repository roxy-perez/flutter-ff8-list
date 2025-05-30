import 'package:flutter/material.dart';
import 'package:final_fantasy_viii_list/theme/app_colors.dart';

class HeaderWidget extends StatelessWidget {
  HeaderWidget({super.key});

  final TextStyle textStyle = TextStyle(
    color: Colors.white,
    fontSize: 40,
    fontFamily: 'Highwind',
  );

  final TextStyle subTextStyle = TextStyle(
    color: AppColors.lightBlue,
    fontSize: 18,
    fontFamily: 'Montserrat',
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
      alignment: Alignment.bottomCenter,
      height: 160,
      decoration: BoxDecoration(color: AppColors.darkBlue),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Final Fantasy VIII', style: textStyle),
              Text('Videojuego', style: subTextStyle),
            ],
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  color: AppColors.gray.withValues(alpha: 0.24),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: IconButton(
                  icon: const Icon(Icons.search),
                  iconSize: 24.0,
                  color: Colors.white,
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                ),
              ),
              const SizedBox(width: 10.0),
              Container(
                padding: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  color: AppColors.gray.withValues(alpha: 0.24),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: IconButton(
                  icon: const Icon(Icons.notifications),
                  iconSize: 24.0,
                  color: Colors.white,
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
