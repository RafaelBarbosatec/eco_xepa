import 'package:cubes/cubes.dart';
import 'package:eco_xepa/src/infra/theme/dimens.dart';
import 'package:eco_xepa/src/ui/components/eco_card.dart';
import 'package:flutter/material.dart';

class CardHighlight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EcoCard(
      margin: EcoDimens.paddingSmall,
      padding: EdgeInsets.zero,
      onTap: () {},
      child: Container(
        width: (context.sizeScreen.width * 0.6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Container(
                height: 100,
                child: Stack(
                  children: [
                    Image.network(
                      'https://img.mfrural.com.br/api/image?url=https://s3.amazonaws.com/mfrural-produtos-us/251068-257274-1355437-laranjas.jpg&width=480&height=288&mode=4',
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
                        'R\$ 2.00/kg',
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
            ),
            Expanded(
              child: Padding(
                padding: EcoDimens.paddingSmall,
                child: Column(
                  children: [
                    Expanded(
                      child: Text(
                        'Larangas da feira de dona maria msa msasa',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        maxLines: 2,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        'Expira em 19/06/2021',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 10,
                        ),
                        maxLines: 2,
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
