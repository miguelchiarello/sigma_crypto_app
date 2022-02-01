import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import '../../shared/sigma_colors.dart';
import 'main_page.dart';
import '../predict_currencies/main/predict_currencies_page.dart';
import '../profile/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page = 1;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  final screens = [
    const PredictCurrenciesPage(),
    const MainPage(),
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
            Icon(Icons.attach_money, size: 30, color: SigmaColors.divider),
            Icon(Icons.home, size: 30, color: SigmaColors.divider),
            Icon(Icons.person_sharp, size: 30, color: SigmaColors.divider),
          ],
          color: SigmaColors.black,
          buttonBackgroundColor: SigmaColors.black,
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
