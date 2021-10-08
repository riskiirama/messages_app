part of 'faqs.dart';

class All extends StatefulWidget {
  @override
  _AllState createState() => _AllState();
}

class _AllState extends State<All> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 30,
          ),
          child: ExpansionTileCard(
            expandedColor: blueColor.withOpacity(0.5),
            expandedTextColor: primaryColor,
            title: Text(
              'What is Ibloov?',
              style: textBold.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Text(
                    'Ibloov is a social event management platform for people to create, search for, and attend events around the world.',
                    style: textBold.copyWith(
                      fontSize: 12,
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
