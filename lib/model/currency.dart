import '../src/shared/datasources/currency_datasource.dart';

class Currency {
  final String id;
  final String logoUrl;
  final String name;
  final double price;
  final double oneDayChange;
  final double oneMonthChange;
  final double marketCap;
  final int rank;
  final int rankDelta;

  const Currency({
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

  Currency.fromJson(Map<String, dynamic> json)
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
  final CurrencyColumn column;
  final Currency currency;

  const CurrencyComparable(this.column, this.currency);

  int compareTo(CurrencyComparable otherComparable) {
    final self = currency;
    final other = otherComparable.currency;

    switch (column) {
      case CurrencyColumn.id:
        return self.id.compareTo(other.id);
      case CurrencyColumn.rank:
        return self.rank.compareTo(other.rank);
      case CurrencyColumn.name:
        return self.name.compareTo(other.name);
      case CurrencyColumn.price:
        return self.price.compareTo(other.price);
      case CurrencyColumn.oneHourChange:
        return self.oneDayChange.compareTo(other.oneDayChange);
      case CurrencyColumn.oneDayChange:
        return self.oneMonthChange.compareTo(other.oneMonthChange);
      case CurrencyColumn.marketCap:
        return self.marketCap.compareTo(other.marketCap);
    }
  }
}
