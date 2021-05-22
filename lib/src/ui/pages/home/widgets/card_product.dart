import 'package:eco_xepa/src/domain/model/product.dart';
import 'package:eco_xepa/src/infra/theme/dimens.dart';
import 'package:eco_xepa/src/ui/components/eco_card.dart';
import 'package:flutter/material.dart';

class CardProduct extends StatelessWidget {
  final Product item;
  final VoidCallback? onTap;

  const CardProduct({Key? key, this.onTap, required this.item})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return EcoCard(
      margin: EcoDimens.paddingSmall,
      padding: EdgeInsets.zero,
      onTap: onTap,
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 100,
              child: Image.network(
                item.img,
                fit: BoxFit.cover,
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
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                    ),
                    SizedBox(
                      height: EcoDimens.v2,
                    ),
                    Text(
                      'Validade: ${item.validity}',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: EcoDimens.v5,
                    ),
                    Text(
                      item.description,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                      ),
                      maxLines: 2,
                    ),
                    SizedBox(
                      height: EcoDimens.v10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow[600],
                        ),
                        Text(
                          item.avaliation,
                          style: TextStyle(color: Colors.yellow[600]),
                        ),
                        Expanded(child: Container()),
                        Text(
                          item.price,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor,
                          ),
                          maxLines: 2,
                        ),
                      ],
                    )
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
