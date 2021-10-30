import 'package:crypto_app/src/shared/datasources/currency_datasource.dart';
import 'package:crypto_app/src/shared/provider/currency_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class CurrenciesWidget extends StatelessWidget {
  const CurrenciesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CurrencyProvider>(context);
    final currencyDataSource = provider.currencyDataSource;

    if (currencyDataSource == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return SfDataGrid(
        isScrollbarAlwaysShown: true,
        allowPullToRefresh: false,
        allowSorting: true,
        defaultColumnWidth: 110,
        frozenColumnsCount: 1,
        columns: buildGridColumns(),
        source: currencyDataSource,
      );
    }
  }

  List<GridColumn> buildGridColumns() => <GridColumn>[
        GridColumn(
            columnName: CurrencyColumn.id.toString(), label: Center(child: buildLabel('ID'))),
        GridColumn(
            columnName: CurrencyColumn.rank.toString(),
            label: Center(child: buildLabel('Rank'))),
        GridColumn(
            columnName: CurrencyColumn.name.toString(),
            label: Center(child: buildLabel('Name'))),
        GridColumn(
            columnName: CurrencyColumn.price.toString(),
            label: Center(child: buildLabel('Price'))),
        GridColumn(
            columnName: CurrencyColumn.oneHourChange.toString(),
            label: Center(child: buildLabel('Last Day'))),
        GridColumn(
            columnName: CurrencyColumn.oneDayChange.toString(),
            label: Center(child: buildLabel('Last Month'))),
        GridColumn(
            columnName: CurrencyColumn.marketCap.toString(),
            label: Center(child: buildLabel('Market Cap'))),
      ];

  Widget buildLabel(String text) => Text(
        text,
      );
}
