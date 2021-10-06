part of '../widget.dart';

class NotifDateTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Color(0xff3AC922).withOpacity(0.10),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  'ES',
                  style: textBold.copyWith(
                    fontSize: 12,
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 11,
            ),
            Text(
              'Afolabi Bada',
              style: textBold.copyWith(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: primaryColor,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                'invited you to the “Summer Body Slam” private pool party',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: textBold.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff505050),
                ),
              ),
            ),
            SizedBox(
              width: 20,
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
