part of 'widget.dart';

class PageEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          CardEventTile(
            image: 'assets/event_card.png',
          ),
          CardEventTile(
            image: 'assets/event_card2.png',
          ),
          CardEventTile(
            image: 'assets/event_card.png',
          ),
        ],
      ),
    );
  }
}
