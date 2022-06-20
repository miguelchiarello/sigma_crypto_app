import 'package:flutter/cupertino.dart';

import '../../../api/crypto_api.dart';

class CurrencyProvider extends ChangeNotifier {
  // CurrencyDataSource? currencyDataSource;
  // List<Currency> currencies = [];
  //TODO: implementar o provider
  CurrencyProvider() {
    loadCurrencies();
  }

  Future loadCurrencies() async {
    final currencies = await CryptoApi.getCurrencies();

    // this.currencies = currencies;
    // currencyDataSource = CurrencyDataSource(currencies: currencies);
    notifyListeners();
  }
}
