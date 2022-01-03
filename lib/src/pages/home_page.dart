import 'package:crypto_app/src/shared/widgets/currencies_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(8.0, 65.0, 8.0, 0.0),
        child: CurrenciesWidget(),
      ),
    );
  }
}
