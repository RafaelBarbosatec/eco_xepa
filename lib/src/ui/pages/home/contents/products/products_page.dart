import 'package:cubes/cubes.dart';
import 'package:eco_xepa/src/domain/model/product.dart';
import 'package:eco_xepa/src/infra/theme/dimens.dart';
import 'package:eco_xepa/src/ui/pages/home/contents/products/products_cube.dart';
import 'package:eco_xepa/src/ui/pages/home/widgets/card_highlight.dart';
import 'package:eco_xepa/src/ui/pages/home/widgets/card_product.dart';
import 'package:eco_xepa/src/ui/pages/home/widgets/card_search.dart';
import 'package:eco_xepa/src/ui/pages/product_detail/product_detail_screen.dart';
import 'package:flutter/material.dart';

class ProductPage extends CubeWidget<ProductsCube> {
  @override
  Widget buildView(BuildContext context, ProductsCube cube) {
    return cube.products.build<List<Product>>((value) {
      return ListView.builder(
          itemCount: value.length + 2,
          itemBuilder: (context, index) {
            if (index == 0) {
              return CardSearch(
                title: 'Olá Rafael',
                description: 'Encontre aqui os produtos que desejar',
                onChanged: cube.search,
              );
            }
            if (index == 1) {
              return _buildHighlight(cube);
            }
            int indexProduct = index - 2;
            if (indexProduct == 0) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
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
                    item: value[indexProduct],
                    onTap: () => _goToDetail(context, value[indexProduct]),
                  ),
                ],
              );
            }
            return CardProduct(
              item: value[indexProduct],
              onTap: () => _goToDetail(context, value[indexProduct]),
            );
          });
    });
  }

  Widget _buildHighlight(ProductsCube cube) {
    return cube.highlight.build<List<Product>>((value) {
      if (value.isEmpty) {
        return SizedBox.shrink();
      }
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
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
            child: ListView.builder(
              itemCount: value.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CardHighlight(
                  item: value[index],
                  onTap: () => _goToDetail(context, value[index]),
                );
              },
            ),
          ),
        ],
      );
    });
  }

  void _goToDetail(BuildContext context, Product item) {
    context.goTo(ProductDetailScreen(
      item: item,
    ));
  }
}
