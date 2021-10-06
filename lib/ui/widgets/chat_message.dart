part of 'widget.dart';

class ChatMessage extends StatelessWidget {
  final bool isCeklis;
  final bool isJarak;
  final bool isNotif;

  ChatMessage({
    required this.isCeklis,
    required this.isJarak,
    required this.isNotif,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              'assets/image_photo.png',
              width: 62,
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kunle Coker',
                    style: textBold.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      isCeklis
                          ? Image.asset(
                              'assets/icon_vektor.png',
                              width: 19,
                            )
                          : SizedBox(),
                      isJarak
                          ? SizedBox(
                              width: 7,
                            )
                          : SizedBox(),
                      Expanded(
                        child: Text(
                          'Benson, will you be going to the AquaFest event this June?',
                          style: textBold.copyWith(
                            fontSize: 13,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 27,
            ),
            Column(
              children: [
                Text(
                  '15:10',
                  style: textBold.copyWith(
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                isNotif
                    ? Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: blueColor,
                        ),
                        child: Center(
                          child: Text(
                            '2',
                            style: textBold.copyWith(
                              fontSize: 10,
                              color: backgroundWhite,
                            ),
                          ),
                        ),
                      )
                    : SizedBox(),
              ],
            ),
            SizedBox(width: 10),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 80),
          child: Divider(
            thickness: 1,
          ),
        ),
        SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
