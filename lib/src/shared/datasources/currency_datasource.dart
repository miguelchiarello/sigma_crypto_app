import 'package:crypto_app/model/currency.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

enum CurrencyColumn {
  id,
  rank,
  name,
  oneHourChange,
  oneDayChange,
  marketCap,
  price
}

class CurrencyDataSource extends DataGridSource {
  late List<DataGridRow> _currencies;

  @override
  List<DataGridRow> get rows => _currencies;

  CurrencyDataSource({required List<Currency> currencies}) {
    buildDataGrid(currencies);
  }

  void buildDataGrid(List<Currency> currencies) => _currencies = currencies
      .map<DataGridRow>(
        (currency) => DataGridRow(
          cells: CurrencyColumn.values
              .map(
                (column) => DataGridCell<CurrencyComparable>(
                  columnName: column.toString(),
                  value: CurrencyComparable(column, currency),
                ),
              )
              .toList(),
        ),
      )
      .toList();

  @override
  DataGridRowAdapter buildRow(DataGridRow row) => DataGridRowAdapter(
          cells: row.getCells().map<Widget>((dataGridCell) {
        final CurrencyComparable currencyWrapper = dataGridCell.value;
        final currency = currencyWrapper.currency;
        final column = CurrencyColumn.values
            .firstWhere((value) => value.toString() == dataGridCell.columnName);

        switch (column) {
          case CurrencyColumn.id:
            return buildIdRow(currency);
          case CurrencyColumn.rank:
            return buildRankRow(currency.rank);
          case CurrencyColumn.name:
            return buildNameRow(currency.name);
          case CurrencyColumn.price:
            return buildPriceRow(currency.price);
          case CurrencyColumn.oneHourChange:
            return buildOneDayChangeRow(currency.oneDayChange);
          case CurrencyColumn.oneDayChange:
            return buildOneMonthChangeRow(currency.oneMonthChange);
          case CurrencyColumn.marketCap:
            return buildMarketCapRow(currency.marketCap);
          
          default:
            return const Text('Hello');
        }
      }).toList());

  Widget buildIdRow(Currency currency) => Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            buildLogo(currency),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                currency.id,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      );

  Widget buildLogo(Currency currency) {
      final isSvg = currency.logoUrl.endsWith('.svg');
      
      return CircleAvatar(
        radius: 10,
        child: isSvg
        ? SvgPicture.network(currency.logoUrl,)
        : Image.network(currency.logoUrl),
      );
  }

  Widget buildPriceRow(double price) => Container(
    padding: const EdgeInsets.all(16),
    child: Center(child: Text('R\$$price', style: const TextStyle(color: Colors.tealAccent),)),
  );

  Widget buildRankRow(int rank) => Container(
    padding: const EdgeInsets.all(16),
    child: Center(child: Text('$rank')),
  );

  Widget buildNameRow(String name) => Container(
    padding: const EdgeInsets.all(16),
    child: Text(name),
  );
  
  Widget buildOneDayChangeRow(double oneDayChange) => Container(
    padding: const EdgeInsets.all(16),
    child: Center(child: Text('$oneDayChange')),
  );

  Widget buildOneMonthChangeRow(double oneMonthChange) => Container(
    padding: const EdgeInsets.all(16),
    child: Center(child: Text('$oneMonthChange')),
  );

  Widget buildMarketCapRow(double marketCap) => Container(
    padding: const EdgeInsets.all(16),
    child: Center(child: Text('$marketCap')),
  );
}
