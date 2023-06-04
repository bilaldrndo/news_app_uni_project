import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_code/main.dart';
import 'package:project_code/text_widgets.dart';
import 'package:project_code/theme.dart';
import 'package:project_code/ui/screens/home.dart';
import 'package:project_code/ui/screens/newest_screen.dart';
import 'package:project_code/ui/screens/profile_screen.dart';

class MainTabBarScreen extends StatefulWidget {
  @override
  _MainTabBarScreenState createState() => _MainTabBarScreenState();
}

class _MainTabBarScreenState extends State<MainTabBarScreen> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    NewestAndBookmarkScreen(),
    NewestAndBookmarkScreen(isNewest: false),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = darkNotifier.value;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
        unselectedLabelStyle: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        unselectedItemColor: primaryColor2,
        selectedLabelStyle: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        selectedItemColor: primaryColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/home_inactive.png'),
              size: 24,
              color: primaryColor2,
            ),
            activeIcon: ImageIcon(
              AssetImage('assets/images/home_active.png'),
              size: 24,
              color: primaryColor,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/newest_inactive.png'),
              size: 24,
              color: primaryColor2,
            ),
            activeIcon: ImageIcon(
              AssetImage('assets/images/newest_active.png'),
              size: 24,
              color: primaryColor,
            ),
            label: 'Newest',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/bookmark_inactive.png'),
              size: 24,
              color: primaryColor2,
            ),
            activeIcon: ImageIcon(
              AssetImage('assets/images/bookmark_active.png'),
              size: 24,
              color: primaryColor,
            ),
            label: 'Bookmarks',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/profile_inactive.png'),
              size: 24,
              color: primaryColor2,
            ),
            activeIcon: ImageIcon(
              AssetImage('assets/images/profile_active.png'),
              size: 24,
              color: primaryColor,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
