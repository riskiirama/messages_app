part of 'faqs.dart';

class FaqsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget tabBarView() {
      return TabBarView(
        children: [
          ListView(
            children: [
              All(),
            ],
          ),
          ListView(
            children: [],
          ),
          ListView(
            children: [],
          ),
          ListView(
            children: [],
          ),
          ListView(
            children: [],
          ),
        ],
      );
    }

    return Container(
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: backgroundWhite,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(200),
            child: AppBar(
              automaticallyImplyLeading: false,
              centerTitle: true,
              flexibleSpace: Center(
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 18,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'GoBack',
                              style: textBold.copyWith(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff858585),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Text(
                            'FAQs',
                            style: textBold.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: primaryColor,
                            ),
                          ),
                        ],
                      ),
                      // SEACRH

                      Container(
                        margin: EdgeInsets.only(top: 20),
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xffEFEFEF),
                          ),
                          color: backgroundWhite,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/icon_search.png',
                              width: 16,
                            ),
                            SizedBox(
                              width: 13,
                            ),
                            Expanded(
                              child: TextFormField(
                                decoration: InputDecoration.collapsed(
                                  hintText: 'Search',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              backgroundColor: backgroundWhite,
              elevation: 0,
              bottom: TabBar(
                labelStyle: textBold.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                labelColor: primaryColor,
                indicatorColor: darkBlueColor,
                indicatorPadding: EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                tabs: [
                  Tab(
                    text: 'All',
                    iconMargin: EdgeInsets.only(left: 18, right: 18),
                  ),
                  Tab(
                    text: 'Event Registration',
                  ),
                  Tab(
                    text: 'Booking',
                  ),
                  Tab(
                    text: 'Tickets',
                  ),
                  Tab(
                    text: 'Refer friends',
                  ),
                ],
              ),
            ),
          ),
          body: tabBarView(),
        ),
      ),
    );
  }
}
