import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:crypto_app/src/pages/bottom_navbar.dart';
import 'package:crypto_app/src/shared/provider/currency_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => CurrencyProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark(),
          home: AnimatedSplashScreen(
            nextScreen: const BottomNavBar(),
            splash: Image.asset('assets/images/launch_image.png'),
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: Colors.black,
          ),
        ),
      );
}

void main() async {
  runApp(const MyApp());
}
