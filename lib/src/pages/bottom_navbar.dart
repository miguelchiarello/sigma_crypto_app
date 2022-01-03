import 'package:crypto_app/src/shared/sigma_colors.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'currencies_page.dart';
import 'home_page.dart';
import 'profile_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  final screens = [
    const CurrenciesPage(),
    const HomePage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 1,
          height: 53.0,
          items: const <Widget>[
            Icon(Icons.compare_arrows, size: 30, color: Colors.black),
            Icon(Icons.list, size: 30, color: Colors.black),
            Icon(Icons.perm_identity, size: 30, color: Colors.black),
          ],
          color: SigmaColors.grey4,
          buttonBackgroundColor: SigmaColors.divider,
          backgroundColor: Colors.transparent,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 270),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body: screens[_page]);
  }
}
