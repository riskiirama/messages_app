part of '../../widget.dart';

class NotifToday extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 18),
          child: Text(
            'Today',
            style: sfbold.copyWith(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color(0xff505050),
            ),
          ),
        ),
        SizedBox(height: 20),
        ListTile(
          leading: Image.network(
            'https://icon-library.com/images/avatar-icon-images/avatar-icon-images-4.jpg',
            width: 40,
          ),
          title: Row(
            children: [
              Text(
                'Kunle Badejo ',
                style: sfbold.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
              Expanded(
                child: Text(
                  'has invited you to join Ibloov',
                  overflow: TextOverflow.ellipsis,
                  style: sfbold.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff505050),
                  ),
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
