import 'package:eco_xepa/src/domain/model/education_new.dart';
import 'package:eco_xepa/src/infra/theme/dimens.dart';
import 'package:eco_xepa/src/infra/util/function.dart';
import 'package:eco_xepa/src/ui/components/eco_card.dart';
import 'package:flutter/material.dart';

class CardEducationHighlight extends StatelessWidget {
  final EducationNew edu;

  const CardEducationHighlight({Key? key, required this.edu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EcoCard(
      onTap: () {
        launchURL(edu.link);
      },
      margin: EcoDimens.paddingSmall,
      padding: EdgeInsets.zero,
      child: Stack(
        children: [
          Image.network(
            edu.img,
            fit: BoxFit.cover,
            height: 220,
            width: double.maxFinite,
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
              edu.title,
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
