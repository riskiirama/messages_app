part of 'widget.dart';

class EventCreated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffA0A3BD),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(20),
        child: AppBar(
          backgroundColor: Color(0xffA0A3BD),
          elevation: 0,
          flexibleSpace: Container(
            margin: EdgeInsets.symmetric(horizontal: 6),
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
        children: [
          Card(),
        ],
      ),
    );
  }
}

class Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //todo  CONTENT
        Container(
          padding: EdgeInsets.only(
            top: 10,
            left: 14,
            right: 14,
            bottom: 15,
          ),
          margin: EdgeInsets.symmetric(vertical: 22),
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/e1.png'))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //todo tanggal
              Container(
                margin: EdgeInsets.only(bottom: 20),
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    color: backgroundWhite.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '01',
                      style: sfbold.copyWith(
                          fontSize: 9,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffFF2A52)),
                    ),
                    Text(
                      'DEC',
                      style: sfbold.copyWith(
                          fontSize: 9,
                          fontWeight: FontWeight.bold,
                          color: darkBlueColor),
                    ),
                  ],
                ),
              ),

              //todo music
              Row(
                children: [
                  Image.asset(
                    'assets/icon_music.png',
                    width: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Afro-Pop',
                    style: sfbold.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 9,
                      color: backgroundWhite,
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 5,
              ),

              //todo name music
              Text(
                'Burna Boy Concert',
                style: sfbold.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: backgroundWhite,
                ),
              ),

              SizedBox(
                height: 8,
              ),

              //todo footer
              Row(
                children: [
                  Text(
                    'Victoria Island, Lagos',
                    style: sfbold.copyWith(
                      fontSize: 10,
                      color: backgroundWhite,
                    ),
                  ),
                  Spacer(),
                  Image.asset(
                    'assets/icon_pencil.png',
                    width: 15,
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    'Edit Event',
                    style: sfbold.copyWith(
                      fontSize: 12,
                      color: backgroundWhite,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        //todo  CONTENT
        Container(
          padding: EdgeInsets.only(
            top: 10,
            left: 14,
            right: 14,
            bottom: 15,
          ),
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/e2.png'))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //todo tanggal
              Container(
                margin: EdgeInsets.only(bottom: 20),
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    color: backgroundWhite.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '01',
                      style: sfbold.copyWith(
                          fontSize: 9,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffFF2A52)),
                    ),
                    Text(
                      'DEC',
                      style: sfbold.copyWith(
                          fontSize: 9,
                          fontWeight: FontWeight.bold,
                          color: darkBlueColor),
                    ),
                  ],
                ),
              ),

              //todo music
              Row(
                children: [
                  Image.asset(
                    'assets/icon_music.png',
                    width: 15,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Afro-Pop',
                    style: sfbold.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 9,
                      color: backgroundWhite,
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 5,
              ),

              //todo name music
              Text(
                'Davido Album Launch',
                style: sfbold.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: backgroundWhite,
                ),
              ),

              SizedBox(
                height: 8,
              ),

              //todo footer
              Row(
                children: [
                  Text(
                    'Victoria Island, Lagos',
                    style: sfbold.copyWith(
                      fontSize: 10,
                      color: backgroundWhite,
                    ),
                  ),
                  Spacer(),
                  Image.asset(
                    'assets/icon_pencil.png',
                    width: 15,
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    'Edit Event',
                    style: sfbold.copyWith(
                      fontSize: 12,
                      color: backgroundWhite,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
