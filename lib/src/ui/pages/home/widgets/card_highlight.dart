import 'package:cubes/cubes.dart';
import 'package:eco_xepa/src/domain/model/product.dart';
import 'package:eco_xepa/src/infra/theme/dimens.dart';
import 'package:eco_xepa/src/ui/components/eco_card.dart';
import 'package:flutter/material.dart';

class CardHighlight extends StatelessWidget {
  final VoidCallback? onTap;
  final Product item;

  const CardHighlight({Key? key, this.onTap, required this.item})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return EcoCard(
      margin: EcoDimens.paddingSmall,
      padding: EdgeInsets.zero,
      onTap: onTap,
      child: Container(
        width: (context.sizeScreen.width * 0.6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              child: Stack(
                children: [
                  Image.network(
                    item.img,
                    fit: BoxFit.cover,
                    width: double.maxFinite,
                  ),
                  Container(
                    padding: EcoDimens.paddingSmall,
                    alignment: Alignment.bottomRight,
                    // margin: EdgeInsets.only(top: 55),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.8),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Text(
                      item.price,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EcoDimens.paddingSmall,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                      maxLines: 1,
                    ),
                    Text(
                      item.description,
                      style: TextStyle(fontSize: 12),
                      maxLines: 1,
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Expira em ${item.expiration}',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                          maxLines: 2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
