import 'package:cubes/cubes.dart';
import 'package:eco_xepa/src/infra/theme/dimens.dart';
import 'package:eco_xepa/src/ui/pages/home/widgets/card_highlight.dart';
import 'package:eco_xepa/src/ui/pages/home/widgets/card_product.dart';
import 'package:eco_xepa/src/ui/pages/home/widgets/card_search.dart';
import 'package:eco_xepa/src/ui/pages/product_detail/product_detail_screen.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CardSearch(
          title: 'Olá Rafael',
          description: 'Encontre aqui os produtos que desejar',
        ),
        ..._buildContent(context)
      ],
    );
  }

  List<Widget> _buildContent(BuildContext context) {
    return [
      Container(
        alignment: Alignment.topLeft,
        margin: EcoDimens.paddingSmall,
        child: Text(
          'Destaques',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Container(
        height: 190,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            CardHighlight(
              onTap: () => _goToDetail(context),
            ),
            CardHighlight(
              onTap: () => _goToDetail(context),
            ),
            CardHighlight(
              onTap: () => _goToDetail(context),
            ),
          ],
        ),
      ),
      Container(
        alignment: Alignment.topLeft,
        margin: EcoDimens.paddingSmall,
        child: Text(
          'Produtos da semana',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      CardProduct(
        onTap: () => _goToDetail(context),
      ),
      CardProduct(
        onTap: () => _goToDetail(context),
      ),
      CardProduct(
        onTap: () => _goToDetail(context),
      ),
      CardProduct(
        onTap: () => _goToDetail(context),
      ),
    ];
  }

  void _goToDetail(BuildContext context) {
    context.goTo(ProductDetailScreen());
  }
}
