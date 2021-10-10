part of 'widget.dart';

class NotificationToggle extends StatelessWidget {
  final String name;
  final String desc;

  const NotificationToggle({Key? key, required this.name, required this.desc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: sfbold.copyWith(
                fontSize: 18, color: primaryColor, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            desc,
            style: sfbold.copyWith(
              fontSize: 15,
              color: grey,
            ),
          ),
        ],
      ),
    );
  }
}
