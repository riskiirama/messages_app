import 'package:flutter/material.dart';
import 'package:messages/theme.dart';

class ChatMessage extends StatelessWidget {
  final String image;
  final String text;
  final String desc;
  final String time;
  final bool notifikasi;
  final bool vektor;

  ChatMessage(this.image, this.text, this.desc, this.time,
      {required this.notifikasi, required this.vektor});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 61,
          height: 61,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: backgroundWhite, width: 2),
            image: DecorationImage(
              image: AssetImage(
                image,
              ),
            ),
          ),
        ),
        SizedBox(width: 21),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              text,
              style: primaryText.copyWith(
                fontSize: 15,
                fontWeight: bold,
              ),
            ),
            SizedBox(height: 7),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                vektor
                    ? Image.asset(
                        'assets/icon_vektor.png',
                        width: 20,
                      )
                    : SizedBox(
                        width: 20,
                      ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  desc,
                  style: primaryText.copyWith(
                    fontSize: 13,
                    fontWeight: regular,
                  ),
                ),
              ],
            ),
          ],
        ),
        Spacer(),
        Column(
          children: [
            Text(
              time,
            ),
            SizedBox(height: 16),
            notifikasi
                ? Image.asset(
                    'assets/icon_notif.png',
                    width: 25,
                  )
                : SizedBox(),
          ],
        ),
      ],
    );
  }
}
