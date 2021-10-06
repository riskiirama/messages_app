part of '../widget.dart';

class NotifToday extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/image_empty.png',
              width: 40,
            ),
            Text(
              'Kunle Badejo',
              style: textBold.copyWith(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: primaryColor,
              ),
            ),
            Text(
              ' has invited you to join Ibloov',
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: textBold.copyWith(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color(0xff505050),
              ),
            ),
            Text(
              '2min',
              style: textBold.copyWith(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color(0xff505050),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
