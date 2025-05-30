import 'package:final_fantasy_viii_list/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ListCharacters extends StatefulWidget {
  const ListCharacters({super.key});

  @override
  State<ListCharacters> createState() => _ListCharactersState();
}

class _ListCharactersState extends State<ListCharacters> {
  double widthCard = 0;

  TextStyle styleText = TextStyle(
    color: AppColors.yellow,
    fontSize: 32,
    fontFamily: 'Highwind',
    letterSpacing: 2,
  );

  @override
  Widget build(BuildContext context) {
    widthCard = MediaQuery.of(context).size.width - 50;

    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        children: [
          Text('Portadas', style: styleText),
          const SizedBox(height: 25.0),
          Row(
            children: [
              coverCard("cover1.jpg", "1.- ", "1999"),
              SizedBox(width: widthCard * .03),
              coverCard("cover2.jpg", "2.- ", "2000"),
              SizedBox(width: widthCard * .03),
              coverCard("cover3.jpg", "3.- ", "2001"),
            ],
          ),
        ],
      ),
    );
  }

  Column coverCard(String image, String title, String subtitle) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.asset(
            "assets/images/$image",
            width: widthCard * .31,
            height: 110,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 10.0),
        RichText(
          text: TextSpan(
            text: title,
            style: TextStyle(color: AppColors.gray, fontSize: 14),
            children: [
              TextSpan(
                text: subtitle,
                style: TextStyle(
                  color: AppColors.darkBlue,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
