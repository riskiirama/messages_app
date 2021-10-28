part of 'widget.dart';

class FollowersPage extends StatefulWidget {
  @override
  _FollowersPageState createState() => _FollowersPageState();
}

class _FollowersPageState extends State<FollowersPage> {
  List<User> _users = [
    User('Opeolu Tijani', 'assets/image_profile.png', false),
    User('Opeolu Tijani', 'assets/image_profile.png', false),
    User('Opeolu Tijani', 'assets/image_profile.png', false),
  ];
  bool isFollowed = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundWhite,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: backgroundWhite,
        elevation: 0,
        flexibleSpace: Padding(
          padding: EdgeInsets.only(left: 22),
          child: Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                'Go Back',
                style: sfmedium.copyWith(
                  fontSize: 15,
                  color: darkBlueColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          'Followers',
          style: sfsemibold.copyWith(
            fontSize: 15,
            color: primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(
          right: 20,
          left: 20,
        ),
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: ListView.builder(
          itemCount: _users.length,
          itemBuilder: (context, index) {
            return userComponent(user: _users[index]);
          },
        ),
      ),
    );
  }

  userComponent({required User user}) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: 38,
                  height: 38,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(user.image),
                  )),
              SizedBox(width: 10),
              Text(user.name,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500)),
            ],
          ),
          Container(
              height: 35,
              decoration: BoxDecoration(
                border: Border.all(color: darkBlueColor),
                borderRadius: BorderRadius.circular(50),
              ),
              child: MaterialButton(
                elevation: 0,
                color: user.isFollowedByMe ? darkBlueColor : backgroundWhite,
                onPressed: () {
                  setState(() {
                    user.isFollowedByMe = !user.isFollowedByMe;
                  });
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  user.isFollowedByMe ? 'Follow' : 'Following',
                  style: user.isFollowedByMe
                      ? sfmedium.copyWith(
                          fontSize: 12,
                          color: backgroundWhite,
                          fontWeight: FontWeight.bold,
                        )
                      : sfmedium.copyWith(
                          fontSize: 12,
                          color: blueColor,
                          fontWeight: FontWeight.bold,
                        ),
                ),
              ))
        ],
      ),
    );
  }
}
