part of '../../widget.dart';

class ChatBubble extends StatelessWidget {
  final String text;

  const ChatBubble({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 14,
          ),
          width: 157,
          height: 54,
          decoration: BoxDecoration(
            color: Color(0xffEFEFEF),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(24),
              topRight: Radius.circular(24),
              bottomLeft: Radius.circular(24),
            ),
          ),
          child: Center(
            child: Text(
              text,
              style: sfbold,
            ),
          ),
        ),
        SizedBox(height: 2),
        SizedBox(
          width: 240,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '12:10',
                style: sfbold.copyWith(fontSize: 10),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
