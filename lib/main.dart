import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'src/features/login/login_page.dart';
import 'src/shared/provider/currency_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => CurrencyProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark(),
          home: AnimatedSplashScreen(
            nextScreen: const LoginPage(),
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
