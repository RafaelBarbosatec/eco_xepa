import 'package:eco_xepa/src/infra/theme/dimens.dart';
import 'package:eco_xepa/src/infra/util/function.dart';
import 'package:eco_xepa/src/ui/components/eco_card.dart';
import 'package:flutter/material.dart';

class CardEducationHighlight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EcoCard(
      onTap: () {
        launchURL(
            'https://www.sebrae.com.br/sites/PortalSebrae/conteudos/destaques');
      },
      margin: EcoDimens.paddingSmall,
      padding: EdgeInsets.zero,
      child: Stack(
        children: [
          Image.network(
            'https://s3.amazonaws.com/wordpress-cdn.eadbox.com/2017/12/14111328/1312_educa%C3%A7%C3%A3o.png',
            fit: BoxFit.cover,
            height: 220,
          ),
          Container(
            width: double.maxFinite,
            alignment: Alignment.bottomCenter,
            padding: EcoDimens.paddingDefault,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.transparent,
                Colors.black.withOpacity(0.8),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
            child: Text(
              'Aprenda a organizar as finanças de seu empreendimento',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
