part of 'widget.dart';

class PageAttending extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
          ),
          width: double.infinity,
          height: 35,
          decoration: BoxDecoration(
            color: backgroundWhite,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Icon(
                Icons.search,
                color: grey,
              ),
              SizedBox(
                width: 13,
              ),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration.collapsed(hintText: 'Search'),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 40),
          child: Timeline(
            position: TimelinePosition.Left,
            iconSize: 40,
            lineColor: Colors.blue,
            shrinkWrap: true,
            lineWidth: 2,
            physics: BouncingScrollPhysics(),
            children: <TimelineModel>[
              TimelineModel(
                Container(
                  height: 131,
                  width: double.infinity,
                  child: Image.asset('assets/event_card.png'),
                ),
                icon: Icon(Icons.receipt, color: Colors.white),
                iconBackground: Colors.blue,
              ),
              TimelineModel(
                Container(
                  height: 131,
                  child: Image.asset('assets/event_card.png'),
                ),
                icon: Icon(Icons.receipt, color: Colors.white),
                iconBackground: Colors.blue,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
