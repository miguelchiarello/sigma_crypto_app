import '../shared/widgets/currencies_widget.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

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
