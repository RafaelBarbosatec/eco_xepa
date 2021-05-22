import 'package:eco_xepa/src/infra/theme/dimens.dart';
import 'package:eco_xepa/src/ui/components/eco_button.dart';
import 'package:eco_xepa/src/ui/components/eco_card.dart';
import 'package:eco_xepa/src/ui/pages/my_products/widgets/interest_item.dart';
import 'package:eco_xepa/src/ui/pages/my_products/widgets/my_product_item.dart';
import 'package:flutter/material.dart';
import 'package:cubes/cubes.dart';

class MyProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meus produtos'),
      ),
      body: ListView(
        children: [
          MyProductItem(
            onViewinterest: () => _sholDialog(context),
          ),
          MyProductItem(
            onViewinterest: () => _sholDialog(context),
          ),
          MyProductItem(
            onViewinterest: () => _sholDialog(context),
          ),
          MyProductItem(
            onViewinterest: () => _sholDialog(context),
          ),
          SizedBox(
            height: EcoDimens.v20,
          ),
        ],
      ),
    );
  }

  _sholDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: EcoCard(
            margin: EcoDimens.paddingDefault,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Lista de interessados',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Divider(),
                ListView(
                  shrinkWrap: true,
                  children: [
                    InterestItem(),
                    InterestItem(),
                    InterestItem(),
                    InterestItem(),
                  ],
                ),
                Divider(),
                Container(
                  width: double.maxFinite,
                  child: EcoButton(
                    child: Text('Fechar'),
                    onPressed: () {
                      context.pop();
                    },
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
