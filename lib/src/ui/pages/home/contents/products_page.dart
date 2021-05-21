import 'package:cubes/cubes.dart';
import 'package:eco_xepa/src/infra/theme/dimens.dart';
import 'package:eco_xepa/src/ui/pages/home/widgets/card_highlight.dart';
import 'package:eco_xepa/src/ui/pages/home/widgets/card_product.dart';
import 'package:eco_xepa/src/ui/pages/home/widgets/card_search.dart';
import 'package:eco_xepa/src/ui/pages/product_detail/product_detail_screen.dart';
import 'package:eco_xepa/src/ui/pages/profile/profile_screen.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildLocation(context),
        CardSearch(
          title: 'Olá Rafael',
          description: 'Encontre aqui os produtos que desejar',
        ),
        ..._buildContent(context)
      ],
    );
  }

  Widget _buildLocation(BuildContext context) {
    return Padding(
      padding: EcoDimens.paddingSmall,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Araguaina - TO',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: EcoDimens.v5,
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: Colors.green,
              ),
            ],
          ),
          InkWell(
            onTap: () {
              context.goTo(ProfileScreen());
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://pbs.twimg.com/profile_images/3474429373/5e10d62f520bcb8419177497960e7b03.jpeg',
                ),
              ),
            ),
          ),
        ],
      ),
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
