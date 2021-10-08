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
            Container(
              color: blueColor,
            ),
            Container(
              color: blueColor,
            ),
            Container(
              color: blueColor,
            ),
            Container(
              color: blueColor,
            ),
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

    return Scaffold(
      backgroundColor: backgroundWhite,
      appBar: AppBar(
        backgroundColor: backgroundWhite,
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          margin: EdgeInsets.only(top: 25),
          child: Center(
            child: Text(
              'FAQs',
              style: textBold.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        title: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Text(
            'Go Back',
            style: textBold.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: grey,
            ),
          ),
        ),
      ),
      body: body(),
    );
  }
}
