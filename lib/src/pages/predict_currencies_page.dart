import 'package:flutter/material.dart';

class PredictCurrenciesPage extends StatefulWidget {
  const PredictCurrenciesPage({Key? key}) : super(key: key);

  @override
  _PredictCurrenciesPageState createState() => _PredictCurrenciesPageState();
}

class _PredictCurrenciesPageState extends State<PredictCurrenciesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          SizedBox(height: 100),
          Text('Predict Currencies'),
          ListTile(
            title: Text('Predict Currencies'),
            subtitle: Text('Predict Currencies'),
          ),
        ],
      ),
    );
  }
}
