part of '../../widget.dart';

class NotifDateTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 18),
          child: Text(
            'Jul 10, 2021',
            style: textBold.copyWith(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color(0xff505050),
            ),
          ),
        ),
        SizedBox(height: 20),
        ListTile(
          leading: Image.asset(
            'assets/image_empty.png',
            width: 40,
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Kunle Badejo ',
                    style: textBold.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'has invited you to join Ibloov',
                      maxLines: 1,
                      style: textBold.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff505050),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                'has invited you to join Ibloov',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: textBold.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff505050),
                ),
              ),
            ],
          ),
          trailing: Text(
            '2min',
          ),
          dense: true,
        ),
      ],
    );
  }
}
