part of 'faqs.dart';

class FaqsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget search() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          left: 22,
          right: 22,
        ),
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xffEFEFEF),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Icon(
              Icons.search,
            ),
            SizedBox(
              width: 13,
            ),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration.collapsed(
                  hintText: 'Search for keywords',
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(
          top: 80,
          left: 22,
          right: 22,
        ),
        child: ContainedTabBarView(
          tabBarProperties: TabBarProperties(
            labelPadding: EdgeInsets.symmetric(horizontal: 10),
            indicatorSize: TabBarIndicatorSize.label,
            isScrollable: true,
            height: 50,
            indicatorColor: darkBlueColor,
            indicatorWeight: 6.0,
            labelColor: primaryColor,
            unselectedLabelColor: Colors.grey[400],
          ),
          tabs: [
            Text('All'),
            Text('Event Registration', textAlign: TextAlign.center),
            Text('Booking'),
            Text('Tickets'),
            Text(
              'Refer friends',
              textAlign: TextAlign.center,
            ),
          ],
          views: [
            ListView(
              children: [
                All(),
                All(),
                All(),
                All(),
                All(),
                All(),
              ],
            ),
            Container(),
            Container(),
            Container(),
            Container(),
          ],
        ),
      );
    }

    Widget body() {
      return Stack(
        children: [
          search(),
          content(),
        ],
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundWhite,
        appBar: AppBar(
          backgroundColor: backgroundWhite,
          automaticallyImplyLeading: false,
          centerTitle: true,
          elevation: 0,
          flexibleSpace: Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                'GoBack',
                style: sfbold.copyWith(
                  fontSize: 15,
                  color: grey,
                ),
              ),
            ),
          ),
          title: Text(
            'FAQs',
            style: sfbold.copyWith(
              fontSize: 18,
              color: primaryColor,
            ),
          ),
        ),
        body: body(),
      ),
    );
  }
}
