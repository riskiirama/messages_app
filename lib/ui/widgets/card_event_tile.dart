part of 'widget.dart';

class CardEventTile extends StatelessWidget {
  final String image;

  const CardEventTile({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 13),
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              width: 165,
              height: 131,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // content 1
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF).withOpacity(0.6),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        width: 35,
                        height: 35,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '01',
                              style: textBold.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'JAN',
                              style: textBold.copyWith(
                                color: grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Stack(
                        children: [
                          Image.asset(
                            'assets/image_photo3.png',
                            width: 18,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Image.asset(
                              'assets/image_photo2.png',
                              width: 18,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Image.asset(
                              'assets/image_photo2.png',
                              width: 18,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 30),
                            child: Container(
                              width: 18,
                              height: 18,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Text(
                                  '99+',
                                  style: textBold.copyWith(
                                    fontSize: 8,
                                    color: backgroundWhite,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 12,
                  ),
                  // live
                  Row(
                    children: [
                      Icon(
                        Icons.circle,
                        color: Color(0xffF14336),
                        size: 5,
                      ),
                      Text(
                        'Live Event',
                        style: textBold.copyWith(
                          fontSize: 8,
                          color: backgroundWhite,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Marlian Fest',
                    style: textBold.copyWith(
                      fontSize: 11,
                      color: backgroundWhite,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Victoria Island, Lagos',
                    style: textBold.copyWith(
                      fontSize: 6,
                      color: backgroundWhite,
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '50',
                        style: textBold.copyWith(
                          fontSize: 8,
                          color: backgroundWhite,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: backgroundWhite,
                          size: 20,
                        ),
                      ),
                      Icon(
                        Icons.share,
                        color: backgroundWhite,
                        size: 12,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Icon(
                        Icons.favorite,
                        color: backgroundWhite,
                        size: 12,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 13),
              padding: EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              width: 165,
              height: 131,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // content 1
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF).withOpacity(0.6),
                          borderRadius: BorderRadius.circular(2),
                        ),
                        width: 35,
                        height: 35,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '01',
                              style: textBold.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'JAN',
                              style: textBold.copyWith(
                                color: grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Stack(
                        children: [
                          Image.asset(
                            'assets/image_photo3.png',
                            width: 18,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Image.asset(
                              'assets/image_photo2.png',
                              width: 18,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Image.asset(
                              'assets/image_photo2.png',
                              width: 18,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 30),
                            child: Container(
                              width: 18,
                              height: 18,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Text(
                                  '99+',
                                  style: textBold.copyWith(
                                    fontSize: 8,
                                    color: backgroundWhite,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 12,
                  ),
                  // live
                  Row(
                    children: [
                      Icon(
                        Icons.circle,
                        color: Color(0xffF14336),
                        size: 5,
                      ),
                      Text(
                        'Live Event',
                        style: textBold.copyWith(
                          fontSize: 8,
                          color: backgroundWhite,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Marlian Fest',
                    style: textBold.copyWith(
                      fontSize: 11,
                      color: backgroundWhite,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Victoria Island, Lagos',
                    style: textBold.copyWith(
                      fontSize: 6,
                      color: backgroundWhite,
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '50',
                        style: textBold.copyWith(
                          fontSize: 8,
                          color: backgroundWhite,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: backgroundWhite,
                          size: 20,
                        ),
                      ),
                      Icon(
                        Icons.share,
                        color: backgroundWhite,
                        size: 12,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Icon(
                        Icons.favorite,
                        color: backgroundWhite,
                        size: 12,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
