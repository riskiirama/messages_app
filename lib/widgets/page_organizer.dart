part of 'widget.dart';

class PageOrganizer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffA0A3BD),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30),
        child: AppBar(
          backgroundColor: Color(0xffA0A3BD),
          elevation: 0,
          flexibleSpace: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
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
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          PageOrganizerTile(),
          PageOrganizerTile(),
          PageOrganizerTile(),
          PageOrganizerTile(),
          PageOrganizerTile(),
          PageOrganizerTile(),
        ],
      ),
    );
  }
}
