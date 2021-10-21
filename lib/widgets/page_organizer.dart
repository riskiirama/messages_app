part of 'widget.dart';

class PageOrganizer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Column(
            children: [
              //search
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
                        decoration:
                            InputDecoration.collapsed(hintText: 'Search'),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 13,
              ),

              // content
              PageOrganizerTile(),
              PageOrganizerTile(),
              PageOrganizerTile(),
              PageOrganizerTile(),
              PageOrganizerTile(),
              PageOrganizerTile(),
            ],
          ),
        ),
      ],
    );
  }
}
