part of 'widget.dart';

class PageOrganizerTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // content
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return PageOrganizerProfile();
            }));
          },
          child: Row(
            children: [
              Image.asset(
                'assets/image_photo.png',
                width: 70,
              ),
              SizedBox(
                width: 15,
              ),

              // text
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Smade Club',
                      style: sfbold.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Victoria Island, Lagos',
                      style: sfbold.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Concerts, Parties, Live Events',
                      style: sfbold.copyWith(
                        color: grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),

              // rating
              Icon(
                Icons.star,
                color: blueColor,
                size: 20,
              ),
              Icon(
                Icons.star,
                color: blueColor,
                size: 20,
              ),
              Icon(
                Icons.star,
                color: blueColor,
                size: 20,
              ),
              Icon(
                Icons.star,
                color: blueColor,
                size: 20,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 22,
        )
      ],
    );
  }
}
