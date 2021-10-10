part of '../../widget.dart';

class GroupMessage extends StatelessWidget {
  final bool isNotif;

  GroupMessage({
    required this.isNotif,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return AddNewMessageGroup();
            }));
          },
          child: Row(
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
                      style: sfbold.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      '+234 810 124 0399: I need to be there to see it happen life & direct',
                      style: sfbold.copyWith(
                        fontSize: 13,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
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
                    style: sfbold.copyWith(
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
                              style: sfbold.copyWith(
                                fontSize: 10,
                                color: backgroundWhite,
                              ),
                            ),
                          ),
                        )
                      : SizedBox(),
                ],
              )
            ],
          ),
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
