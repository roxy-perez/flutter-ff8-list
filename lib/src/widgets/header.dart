import 'package:flutter/material.dart';
import 'package:final_fantasy_viii_list/theme/app_colors.dart';

class HeaderWidget extends StatelessWidget {
  HeaderWidget({super.key});

  final TextStyle textStyle = TextStyle(
    color: Colors.white,
    fontSize: 26,
    fontFamily: 'FinalFantasy',
  );

  final TextStyle subTextStyle = TextStyle(
    color: AppColors.gray,
    fontSize: 16,
    fontFamily: 'Montserrat',
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      alignment: Alignment.bottomCenter,
      height: 150,
      decoration: BoxDecoration(color: AppColors.darkBlue),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Final Fantasy VIII', style: textStyle),
              Text('Serie', style: subTextStyle),
            ],
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  color: AppColors.gray.withValues(alpha: 0.4),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: IconButton(
                  icon: const Icon(Icons.search),
                  iconSize: 22.0,
                  color: Colors.white,
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                ),
              ),
              const SizedBox(width: 10.0),
              Container(
                padding: const EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  color: AppColors.gray.withValues(alpha: 0.4),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: IconButton(
                  icon: const Icon(Icons.notifications),
                  iconSize: 22.0,
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
