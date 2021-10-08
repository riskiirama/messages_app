part of 'widget.dart';

class PageAttending extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Timeline.tileBuilder(
      theme: TimelineThemeData(
        color: blueColor,
      ),
      builder: TimelineTileBuilder.fromStyle(
        contentsAlign: ContentsAlign.basic,
        contentsBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(24.0),
          child: Image.asset('assets/event_card.png'),
        ),
        itemCount: 10,
      ),
    );
  }
}
