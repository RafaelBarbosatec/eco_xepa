import 'package:eco_xepa/src/infra/theme/dimens.dart';
import 'package:eco_xepa/src/ui/components/eco_card.dart';
import 'package:flutter/material.dart';

class InterestItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EcoCard(
      margin: EcoDimens.paddingSmall,
      padding: EdgeInsets.zero,
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              'https://pbs.twimg.com/profile_images/3474429373/5e10d62f520bcb8419177497960e7b03.jpeg',
              width: 60,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EcoDimens.paddingSmall,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Rafael Almeida',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: EcoDimens.v5,
                  ),
                  Row(
                    children: [
                      Icon(Icons.phone),
                      Text('(64) 984789918'),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
