import 'package:eco_xepa/src/infra/theme/dimens.dart';
import 'package:eco_xepa/src/ui/components/eco_card.dart';
import 'package:flutter/material.dart';

class CardEducation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EcoCard(
      onTap: () {},
      margin: EcoDimens.paddingSmall,
      padding: EdgeInsets.zero,
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              'https://3eaf214443cb92a1.cdn.gocache.net/wp-content/uploads/2018/08/woman-composting-organic-kitchen-waste-picture-id843259360.jpg',
              width: 100,
              fit: BoxFit.cover,
            ),
            Expanded(
              child: Padding(
                padding: EcoDimens.paddingSmall,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Como evitar Desperdícios e ganhar dinheiro com as sobras',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: EcoDimens.v5,
                    ),
                    Text(
                      '15 de junho de 2021',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: EcoDimens.v10,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque quis dui scelerisque, rutrum eros ut, finibus magna.',
                      maxLines: 3,
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
