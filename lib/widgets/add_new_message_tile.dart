part of 'widget.dart';

class AddNewMessageTile extends StatelessWidget {
  final isCeklis;

  AddNewMessageTile(this.isCeklis);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              'assets/image_photo2.png',
              width: 38,
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              'Opeolu Tijani',
              style: sfbold.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            isCeklis
                ? Container(
                    margin: EdgeInsets.only(left: 215),
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: blueColor,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.done,
                      color: backgroundWhite,
                      size: 15,
                    ),
                  )
                : Container(
                    margin: EdgeInsets.only(left: 215),
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: darkGreyColor,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: EdgeInsets.only(left: 55),
          child: Divider(
            thickness: 2,
          ),
        ),
      ],
    );
  }
}
