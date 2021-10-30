import 'dart:convert';

import 'package:crypto_app/model/currency.dart';
import 'package:http/http.dart' as http;

class CryptoApi {
  static const _key = '1b369d3edba4c71cb902dfa7e99cb5a89e2141eb';
  static Future<List<Currency>> getCurrencies() async {
    const url = 'https://api.nomics.com/v1/currencies/ticker?key=$_key&interval=1d,30d&convert=BRL&per-page=100&page=1';
    final response = await http.get(Uri.parse(url));
    final body = json.decode(response.body) as List;
    
    return body.map((item) => Currency.fromJson(item)).toList();
  }
}