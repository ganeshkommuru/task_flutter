import 'package:flutter/material.dart';
import 'package:landing_page_task/themes/colors.dart';


class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {

  int _currentIndex = 0;
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
        _pageController.jumpToPage(_currentIndex);
      },
    );
  }
}

