import '../../../model/currency.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CurrenciesListTile extends StatelessWidget {
  final String id;
  final String logoUrl;
  final String name;
  final double price;
  final double oneDayChange;
  final double oneMonthChange;
  final double marketCap;
  final int rank;
  final int rankDelta;

  const CurrenciesListTile({
    required this.id,
    required this.logoUrl,
    required this.name,
    required this.price,
    required this.oneDayChange,
    required this.oneMonthChange,
    required this.marketCap,
    required this.rank,
    required this.rankDelta,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: const [
          // buildLogo(currency),
        ],
      ),
    );
  }

  Widget buildLogo(Currency currency) {
    final isSvg = currency.logoUrl.endsWith('.svg');
    return CircleAvatar(
      radius: 60,
      child: isSvg
          ? SvgPicture.network(
              currency.logoUrl,
            )
          : Image.network(currency.logoUrl),
    );
  }

  Widget buildRank(Currency currency) {
    return Text(
      '${currency.rank}',
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
