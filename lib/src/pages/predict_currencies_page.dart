import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 150),
          GlassContainer.clearGlass(
            borderRadius: BorderRadius.circular(11),
            height: MediaQuery.of(context).size.height * 0.10,
            width: MediaQuery.of(context).size.width * 0.90,
            child: ListTile(
              leading: Image.asset(
                'assets/images/launch_image.png',
              ),
              title: const Text('Bitcoin | BTC'),
              subtitle: const Text('\$12,000.00'),
            ),
          ),
        ],
      ),
    );
  }
}
