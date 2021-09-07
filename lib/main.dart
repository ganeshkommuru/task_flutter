import 'package:flutter/material.dart';
import 'package:landing_page_task/resources/strings.dart';
import 'package:landing_page_task/screens/Lifestyle.dart';
import 'package:landing_page_task/screens/More.dart';
import 'package:landing_page_task/screens/Wallet.dart';
import 'widgets/AppBody.dart';
import 'package:landing_page_task/themes/colors.dart';

void main() {

  runApp(MaterialApp(
    theme: new ThemeData(
      primaryColor: AppColors.white,
    ),
    home: Home()
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentIndex = 0;
  //PageController _pageController = PageController();
  final tabs = [
    AppBody(),
    Lifestyle(),
    Wallet(),
    More(),
  ];

  final tabs_2 = [
    Text('hi'),
    Text('two'),
    Text('there'),
    Text('four'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        //backgroundColor: AppColors.white,
        // leading: IconButton(
        //   onPressed: () {},
        //   icon:  Icon(
        //     Icons.dehaze,
        //     color: AppColors.black,
        //   ),
        // ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0,0.0,0.0,0.0),
            child: IconButton(
              icon: Icon(
                Icons.notifications_outlined,
                color: AppColors.black,
                size: 22,
              ),
              onPressed: () {
                // do something
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0,0.0,20.0,0.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/profile_pic.png'),
              radius: 16,
            ),
          ),

        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text(
                    AppStrings.my_pr,
                  style: TextStyle(
                    fontFamily: 'AvenirNext',
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColors.white.withOpacity(0.64),

                  ),
                ),
                accountEmail: Text(
                    AppStrings.num,
                  style: TextStyle(
                    fontFamily: 'AvenirNext',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.2,
                    color: AppColors.white,
                  ),
                ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/profile_pic.png'),
                radius: 26,
              ),
              decoration: BoxDecoration(
                color: AppColors.purplishBlue,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 24, 0, 24),
              child: Text('About Globe',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 24),
              child: Text('Payment',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
            )
          ],
        ),
      ),
      body:tabs.elementAt(_currentIndex),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        iconSize: 22,
        selectedItemColor: AppColors.blackNav,
        unselectedItemColor: AppColors.blackNav,
        selectedLabelStyle: TextStyle(
          fontFamily: 'AvenirNext',
          fontWeight: FontWeight.w500,
          fontSize: 11,
          letterSpacing: 0.12,
          color: AppColors.blackNav,
          backgroundColor: AppColors.navSelected.withOpacity(0.1),
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: 'AvenirNext',
          fontWeight: FontWeight.w500,
          fontSize: 11,
          letterSpacing: 0.12,
          color: AppColors.blackNav,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.mobile_friendly,
            ),
            label: 'Mobile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.nightlife),
            label: 'Lifestyle',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.read_more),
            label: 'More',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          //_pageController.jumpToPage(_currentIndex);
        },
      ),
    );
  }
}


