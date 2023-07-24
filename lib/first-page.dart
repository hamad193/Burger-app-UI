import 'package:flutter/material.dart';
import 'package:flutter_burger_app/burger-tab.dart';
import 'package:flutter_burger_app/pizza-tab.dart';
import 'package:flutter_burger_app/salad-tab.dart';
import 'package:flutter_burger_app/sushi-tab.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.black,
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFFFA300),
              ),
              accountName: Text('Hamadullah'),
              accountEmail: Text('abc@gmail.com'),
              currentAccountPicture: CircleAvatar(
                radius: 3.0,
                backgroundColor: Colors.green,
                child: Text(
                  'H',
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.apps),
              title: Text('More Apps'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text('Share'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Rate us'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 12.0),
                child: Text(
                  'Categories',
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              //SizedBox(height: 20.0),
              Container(
                height: 80.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: TabBar(
                    controller: _tabController,
                    //isScrollable: true,
                    indicatorColor: Colors.transparent,
                    labelPadding: EdgeInsets.symmetric(horizontal: 5.0),
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.black,
                    labelStyle: GoogleFonts.notoSans(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w700,
                    ),
                    unselectedLabelStyle: GoogleFonts.notoSans(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                    ),
                    tabs: [
                      //Image.asset('assets/images/pizza1.png'),
                      Container(
                        height: 80.0,
                        width: 75.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14.0),
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.3)),
                        ),
                        child: Tab(
                          icon: Container(
                            height: 30.0,
                            width: 70.0,
                            child: Image.asset('assets/images/pizza-tab.png'),
                          ),
                          text: 'Pizza',
                        ),
                      ),
                      Container(
                        height: 80.0,
                        width: 75.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14.0),
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.3)),
                        ),
                        child: Tab(
                          icon: Container(
                            height: 30.0,
                            width: 60.0,
                            child: Image(
                              image: AssetImage('assets/images/sushi-tab.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          text: 'Sushi',
                        ),
                      ),
                      Container(
                        height: 80.0,
                        width: 75.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14.0),
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.3)),
                        ),
                        child: Tab(
                          icon: Container(
                            height: 30.0,
                            width: 55.0,
                            child: Image(
                              image: AssetImage('assets/images/burger2.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          text: 'Burger',
                        ),
                      ),
                      Container(
                        height: 80.0,
                        width: 75.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14.0),
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.3)),
                        ),
                        child: Tab(
                          icon: Container(
                            height: 30.0,
                            width: 60.0,
                            child: Image(
                              image: AssetImage('assets/images/salad-tab.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                          text: 'Salad',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 18.0),
              Container(
                height: MediaQuery.of(context).size.height - 320,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    PizzaTab(),
                    SushiTab(),
                    BurgerTab(),
                    SaladTab(),
                  ],
                ),
              ),
              SizedBox(height: 6.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 55.0,
                      width: 185.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFA300),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Center(
                        child: Text(
                          'Show more',
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
