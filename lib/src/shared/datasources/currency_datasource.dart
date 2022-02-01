import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../model/currency_model.dart';

enum CurrencyList {
  id,
  rank,
  name,
  oneHourChange,
  oneDayChange,
  marketCap,
  price
}

// class CurrencyDataSource extends DataGridSource {
//   late List<String> _currencies;

//   @override
//   List<String> get rows => _currencies;

//   CurrencyDataSource({required List<CurrencyModel> currencies}) {
//     buildDataGrid(currencies);
//   }

//   void buildDataGrid(List<CurrencyModel> currencies) => _currencies = currencies
//       .map<String>(
//         (currency) => String(
//           cells: CurrencyList.values
//               .map(
//                 (column) => DataGridCell<CurrencyComparable>(
//                   columnName: column.toString(),
//                   value: CurrencyComparable(column, currency),
//                 ),
//               )
//               .toList(),
//         ),
//       )
//       .toList();

// @override
// StringAdapter buildRow(String row) => StringAdapter(
//         cells: row.getCells().map<Widget>((dataGridCell) {
//       final CurrencyComparable currencyWrapper = dataGridCell.value;
//       final currency = currencyWrapper.currency;
//       final column = CurrencyList.values
//           .firstWhere((value) => value.toString() == dataGridCell.columnName);

//       switch (column) {
//         case CurrencyList.id:
//           return buildIdRow(currency);
//         case CurrencyList.rank:
//           return buildRankRow(currency.rank);
//         case CurrencyList.name:
//           return buildNameRow(currency.name);
//         case CurrencyList.price:
//           return buildPriceRow(currency.price);
//         case CurrencyList.oneHourChange:
//           return buildOneDayChangeRow(currency.oneDayChange);
//         case CurrencyList.oneDayChange:
//           return buildOneMonthChangeRow(currency.oneMonthChange);
//         case CurrencyList.marketCap:
//           return buildMarketCapRow(currency.marketCap);

//         default:
//           return const Text('Hello');
//       }
//     }).toList());

Widget buildIdRow(CurrencyModel currency) => Container(
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

Widget buildLogo(CurrencyModel currency) {
  final isSvg = currency.logoUrl.endsWith('.svg');

  return CircleAvatar(
    radius: 10,
    child: isSvg
        ? SvgPicture.network(
            currency.logoUrl,
          )
        : Image.network(currency.logoUrl),
  );
}

Widget buildPriceRow(double price) => Container(
      padding: const EdgeInsets.all(16),
      child: Center(
          child: Text(
        'R\$$price',
        style: const TextStyle(color: Colors.tealAccent),
      )),
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
// }
