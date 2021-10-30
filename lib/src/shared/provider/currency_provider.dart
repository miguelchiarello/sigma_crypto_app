import 'package:crypto_app/api/crypto_api.dart';
import 'package:crypto_app/model/currency.dart';
import 'package:crypto_app/src/shared/datasources/currency_datasource.dart';
import 'package:flutter/cupertino.dart';

class CurrencyProvider extends ChangeNotifier {
  CurrencyDataSource? currencyDataSource;
  List<Currency> currencies = [];

  CurrencyProvider() {
    loadCurrencies();
  }

  Future loadCurrencies() async {
    final currencies = await CryptoApi.getCurrencies();

    this.currencies = currencies;
    currencyDataSource = CurrencyDataSource(currencies: currencies);
    notifyListeners();
  }
}