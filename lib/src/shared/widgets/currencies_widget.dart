import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../datasources/currency_datasource.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../provider/currency_provider.dart';

class CurrenciesWidget extends StatelessWidget {
  const CurrenciesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CurrencyProvider>(context);
    // final currencyDataSource = provider.currencyDataSource;

    // if (currencyDataSource == null) {
    //   return const Center(
    //     child: CircularProgressIndicator(),
    //   );
    // } else {
    return Observer(builder: (_) {
      return ListView();
    });
  }
}

// List<GridColumn> buildGridColumns() => <GridColumn>[
//       GridColumn(
//           columnName: CurrencyList.id.toString(),
//           label: Center(child: buildLabel('ID'))),
//       GridColumn(
//           columnName: CurrencyList.rank.toString(),
//           label: Center(child: buildLabel('Rank'))),
//       GridColumn(
//           columnName: CurrencyList.name.toString(),
//           label: Center(child: buildLabel('Name'))),
//       GridColumn(
//           columnName: CurrencyList.price.toString(),
//           label: Center(child: buildLabel('Price'))),
//       GridColumn(
//           columnName: CurrencyList.oneHourChange.toString(),
//           label: Center(child: buildLabel('Last Day'))),
//       GridColumn(
//           columnName: CurrencyList.oneDayChange.toString(),
//           label: Center(child: buildLabel('Last Month'))),
//       GridColumn(
//           columnName: CurrencyList.marketCap.toString(),
//           label: Center(child: buildLabel('Market Cap'))),
//     ];

Widget buildLabel(String text) => Text(
      text,
    );
// }
