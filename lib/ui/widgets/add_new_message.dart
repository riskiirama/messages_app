part of 'widget.dart';

class AddNewMessagePage extends StatefulWidget {
  @override
  _AddNewMessagePageState createState() => _AddNewMessagePageState();
}

class _AddNewMessagePageState extends State<AddNewMessagePage> {
  void _incrementCounter() {}

  List<String> list = [
    'angel',
    'bubbles',
    'shimmer',
    'angelic',
    'bubbly',
    'glimmer',
    'baby',
    'pink',
    'little',
    'butterfly',
    'sparkly',
    'doll',
    'sweet',
    'sparkles',
    'dolly',
    'sweetie',
    'sprinkles',
    'lolly',
    'princess',
    'fairy',
    'honey',
    'snowflake',
    'pretty',
    'sugar',
    'cherub',
    'lovely',
    'blossom',
    'Ecophobia',
    'Hippophobia',
    'Scolionophobia',
    'Ergophobia',
    'Musophobia',
    'Zemmiphobia',
    'Geliophobia',
    'Tachophobia',
    'Hadephobia',
    'Radiophobia',
    'Turbo Slayer',
    'Cryptic Hatter',
    'Crash TV',
    'Blue Defender',
    'Toxic Headshot',
    'Iron Merc',
    'Steel Titan',
    'Stealthed Defender',
    'Blaze Assault',
    'Venom Fate',
    'Dark Carnage',
    'Fatal Destiny',
    'Ultimate Beast',
    'Masked Titan',
    'Frozen Gunner',
    'Bandalls',
    'Wattlexp',
    'Sweetiele',
    'HyperYauFarer',
    'Editussion',
    'Experthead',
    'Flamesbria',
    'HeroAnhart',
    'Liveltekah',
    'Linguss',
    'Interestec',
    'FuzzySpuffy',
    'Monsterup',
    'MilkA1Baby',
    'LovesBoost',
    'Edgymnerch',
    'Ortspoon',
    'Oranolio',
    'OneMama',
    'Dravenfact',
    'Reallychel',
    'Reakefit',
    'Popularkiya',
    'Breacche',
    'Blikimore',
    'StoneWellForever',
    'Simmson',
    'BrightHulk',
    'Bootecia',
    'Spuffyffet',
    'Rozalthiric',
    'Bookman'
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget body() {
      return Column(
        children: [
          Expanded(
            child: AlphabetScrollView(
              list: list.map((e) => AlphaModel(e)).toList(),
              // isAlphabetsFiltered: false,
              alignment: LetterAlignment.right,
              itemExtent: 50,
              unselectedTextStyle: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.normal,
                  color: Colors.black),
              selectedTextStyle:
                  TextStyle(fontWeight: FontWeight.bold, color: blueColor),

              itemBuilder: (_, k, id) {
                return Container(
                  margin: EdgeInsets.only(
                    right: 20,
                  ),
                  child: ListTile(
                    title: Text('$id'),
                    leading: Image.asset(
                      'assets/image_photo2.png',
                      width: 38,
                    ),
                    trailing: Radio<bool>(
                      value: false,
                      groupValue: selectedIndex != k,
                      onChanged: (value) {
                        setState(() {
                          selectedIndex = k;
                        });
                      },
                    ),
                  ),
                );
              },
            ),
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundWhite,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: backgroundWhite,
        elevation: 0,
        title: Container(
          margin: EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Go Back',
                  style: textBold.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: darkBlueColor,
                  ),
                ),
              ),
              Column(
                children: [
                  Text(
                    'Add Participants',
                    style: textBold.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: primaryColor,
                    ),
                  ),
                  Text(
                    '4/30',
                    style: textBold.copyWith(
                      fontSize: 12,
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return AddNewMessageNext();
                  }));
                },
                child: Text(
                  'Next',
                  style: textBold.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: darkBlueColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: body(),
    );
  }
}
