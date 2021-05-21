import 'package:eco_xepa/src/infra/theme/dimens.dart';
import 'package:eco_xepa/src/ui/components/eco_card.dart';
import 'package:flutter/material.dart';

class CardProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EcoCard(
      margin: EcoDimens.paddingSmall,
      padding: EdgeInsets.zero,
      onTap: () {},
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
            child: Container(
              width: 100,
              height: 120,
              child: Image.network(
                'https://www.sescsp.org.br/files/artigo/94136911-180d-41c0-b880-9ca1f7381b10.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EcoDimens.paddingSmall,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Legumes parara',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: EcoDimens.v2,
                  ),
                  Text(
                    'Validade: 10/05/2020',
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
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras eu dictum odio. Cras interdum vitae enim sed tempor.',
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
                        color: Colors.yellow,
                      ),
                      Text(
                        '4.5',
                        style: TextStyle(color: Colors.yellow),
                      ),
                      Expanded(child: Container()),
                      Text(
                        'R\$ 4,00 /kg',
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
    );
  }
}