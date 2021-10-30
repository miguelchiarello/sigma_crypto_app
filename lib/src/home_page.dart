// ignore_for_file: prefer_const_constructors

import 'package:crypto_app/src/shared/widgets/currencies_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String title = 'Sigma';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(title)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CurrenciesWidget(),
      ),
    );
  }
}
