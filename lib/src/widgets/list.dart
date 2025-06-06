import 'package:final_fantasy_viii_list/src/pages/detail_page.dart';
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
          const Divider(color: AppColors.yellow, thickness: 0.4),
          const SizedBox(height: 20.0),
          characterCard("Squall Leonhart", 0xFFF25270, "Squall"),
          characterCard("Rinoa Heartilly", 0xFF94CEF2, "Rinoa"),
          characterCard("Zell Dincht", 0xFFF2E96B, "Zell"),
          characterCard("Quistis Trepe", 0xff98fb98, "Quistis"),
          characterCard("Selphie Tilmitt", 0xffffc0cb, "Selphie"),
          characterCard("Irvine Kinneas", 0xFF909995, "Irvine"),
        ],
      ),
    );
  }

  Widget characterCard(String name, int color, String image) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailPage(
              color: color,
              image: "assets/images/$image.png",
              name: name,
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 15.0),
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        decoration: BoxDecoration(
          color: AppColors.darkBlue.withValues(alpha: 0.09),
          borderRadius: BorderRadius.circular(15),
        ),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Color(color),
                        blurRadius: 15,
                        spreadRadius: 4,
                        blurStyle: BlurStyle.normal,
                        offset: const Offset(-3, 2),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Image.asset(
                    "assets/images/$image.png",
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 20.0),
                Text(
                  name,
                  style: TextStyle(
                    color: AppColors.lightBlue,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert_rounded),
              color: AppColors.lightBlue,
            ),
          ],
        ),
      ),
    );
  }

  Column coverCard(String image, String title, String subtitle) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
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
            style: TextStyle(
              color: AppColors.gray,
              fontSize: 14,
              fontFamily: 'Montserrat',
            ),
            children: [
              TextSpan(
                text: subtitle,
                style: TextStyle(
                  color: AppColors.darkBlue,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Montserrat',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
