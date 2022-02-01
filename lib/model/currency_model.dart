import '../src/shared/datasources/currency_datasource.dart';

class CurrencyModel {
  final String id;
  final String logoUrl;
  final String name;
  final double price;
  final double oneDayChange;
  final double oneMonthChange;
  final double marketCap;
  final int rank;
  final int rankDelta;

  const CurrencyModel({
    required this.id,
    required this.logoUrl,
    required this.name,
    required this.price,
    required this.oneDayChange,
    required this.oneMonthChange,
    required this.marketCap,
    required this.rank,
    required this.rankDelta,
  });

  CurrencyModel.fromJson(Map<String, dynamic> json)
      : id = json['id'] ?? 0,
        logoUrl = json['logo_url'] ?? 0,
        name = json['name'] ?? 0,
        price = double.parse(json['price'] ?? 0),
        oneDayChange = double.parse(json['1d']['price_change_pct'] ?? 0),
        oneMonthChange = double.parse(json['30d']['price_change_pct'] ?? 0),
        marketCap = double.parse(json['market_cap'] ?? 0),
        rank = int.parse(json['rank'] ?? 0),
        rankDelta = int.parse(json['rank_delta'] ?? 0);
}

class CurrencyComparable {
  final CurrencyList card;
  final CurrencyModel currency;

  const CurrencyComparable(this.card, this.currency);

  int compareTo(CurrencyComparable otherComparable) {
    final self = currency;
    final other = otherComparable.currency;

    switch (card) {
      case CurrencyList.id:
        return self.id.compareTo(other.id);
      case CurrencyList.rank:
        return self.rank.compareTo(other.rank);
      case CurrencyList.name:
        return self.name.compareTo(other.name);
      case CurrencyList.price:
        return self.price.compareTo(other.price);
      case CurrencyList.oneHourChange:
        return self.oneDayChange.compareTo(other.oneDayChange);
      case CurrencyList.oneDayChange:
        return self.oneMonthChange.compareTo(other.oneMonthChange);
      case CurrencyList.marketCap:
        return self.marketCap.compareTo(other.marketCap);
    }
  }
}
