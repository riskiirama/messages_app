part of '../../widget.dart';

class Slide extends StatefulWidget {
  @override
  _SlideState createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  List<Chat> items = List.of(Data.chats);
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: backgroundLinear,
        body: ListView.separated(
          itemCount: items.length,
          separatorBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(left: 100),
            child: Divider(),
          ),
          itemBuilder: (context, index) {
            final item = items[index];

            return SlidableWidget(
              child: buildListTile(item),
              onDismissed: (action) =>
                  dismissSlidableItem(context, index, action),
            );
          },
        ),
      );

  void dismissSlidableItem(
      BuildContext context, int index, SlidableAction action) {
    setState(() {
      items.removeAt(index);
    });

    switch (action) {
      case SlidableAction.archive:
        Utils.showSnackBar(context, 'Chat has been archived');
        break;
      case SlidableAction.share:
        Utils.showSnackBar(context, 'Chat has been shared');
        break;
      case SlidableAction.more:
        Utils.showSnackBar(context, 'Selected more');
        break;
      case SlidableAction.delete:
        Utils.showSnackBar(context, 'Chat has been deleted');
        break;
    }
  }

  Widget buildListTile(Chat item) => ListTile(
        contentPadding: EdgeInsets.only(
          left: 18,
          top: 12,
          right: 18,
          bottom: 28,
        ),
        leading: CircleAvatar(
          radius: 28,
          backgroundImage: AssetImage(
            item.urlAvatar,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    item.username,
                    style: sfbold.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  item.time,
                  style: sfbold.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 7),
            Row(
              children: [
                Expanded(
                  child: Text(
                    item.message,
                    style: sfbold.copyWith(
                      fontSize: 13,
                    ),
                  ),
                ),
                SizedBox(
                  width: 27,
                ),
                CircleAvatar(
                  backgroundColor: blueColor,
                  maxRadius: 15,
                  child: Center(
                    child: Text(
                      '3',
                      style: sfbold.copyWith(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return MessageDetailPage();
          }));
        },
      );
}
