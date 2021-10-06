part of 'widget.dart';

class ChatBubbleReply extends StatelessWidget {
  final String text;
  final String time;
  final bool bubble;

  const ChatBubbleReply(
      {Key? key, required this.text, required this.time, required this.bubble})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return bubble
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                margin: EdgeInsets.only(
                  top: 14,
                ),
                width: 234,
                height: 54,
                decoration: BoxDecoration(
                  color: blueColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(24),
                    bottomLeft: Radius.circular(24),
                    topLeft: Radius.circular(24),
                  ),
                ),
                child: Center(
                  child: Text(text,
                      style: textBold.copyWith(
                        color: backgroundWhite,
                      )),
                ),
              ),
              SizedBox(height: 2),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    time,
                    style: textBold.copyWith(fontSize: 10),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    'assets/icon_read.png',
                    width: 17,
                  )
                ],
              ),
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                margin: EdgeInsets.only(
                  top: 14,
                ),
                width: 234,
                height: 85,
                decoration: BoxDecoration(
                  color: blueColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(24),
                    bottomLeft: Radius.circular(24),
                    topLeft: Radius.circular(24),
                  ),
                ),
                child: Center(
                  child: Text(
                    text,
                    style: textBold.copyWith(
                      color: backgroundWhite,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 2),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    time,
                    style: textBold.copyWith(fontSize: 10),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    'assets/icon_read.png',
                    width: 17,
                  )
                ],
              ),
            ],
          );
  }
}
