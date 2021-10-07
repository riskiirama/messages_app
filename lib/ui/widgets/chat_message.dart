part of 'widget.dart';

class ChatMessage extends StatelessWidget {
  final bool isNotif;
  final bool isCeklis;
  final bool isJarak;

  const ChatMessage(
      {Key? key,
      required this.isNotif,
      required this.isCeklis,
      required this.isJarak})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return Dismissible(
          key: Key(index.toString()),
          direction: DismissDirection.endToStart,
          confirmDismiss: (direction) {
            return showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Confirm'),
                  content: Text('Are you sure to delete this item?'),
                  actions: [
                    TextButton(
                      onPressed: () {},
                      child: Text('No'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('Yes'),
                    ),
                  ],
                );
              },
            );
          },
          background: Container(
            child: Image.asset(
              'assets/icon_delete_chat.png',
              width: 52,
            ),
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(right: 18),
          ),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Kunle Coker',
                  style: textBold.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Container(
                  margin: EdgeInsets.only(top: 7),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
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
                ),
                leading: Image.asset(
                  'assets/image_photo.png',
                  width: 62,
                ),
                trailing: Column(
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
                        ? Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: blueColor,
                              ),
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
          ),
        );
      },
    );
  }
}
