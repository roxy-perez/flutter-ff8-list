import 'package:final_fantasy_viii_list/src/widgets/blur_container.dart';
import 'package:final_fantasy_viii_list/theme/app_colors.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    super.key,
    required this.color,
    required this.image,
    required this.name,
  });

  final int color;
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.fullDarkBlue,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(color), AppColors.darkBlue, AppColors.fullDarkBlue],
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 50.0, right: 60.0),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * .5,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(image),
                  ),
                ),
                Positioned(
                  bottom: 80,
                  right: 40,
                  child: BlurContainer(
                    child: Container(
                      width: MediaQuery.of(context).size.width * .5,
                      height: 46,
                      padding: const EdgeInsets.all(6.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.fullDarkBlue.withValues(alpha: 0.8),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Text(
                        name,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontFamily: 'Highwind',
                          letterSpacing: 2.2,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
