import 'package:eco_xepa/src/domain/model/education_new.dart';
import 'package:eco_xepa/src/infra/theme/dimens.dart';
import 'package:eco_xepa/src/infra/util/function.dart';
import 'package:eco_xepa/src/ui/components/eco_card.dart';
import 'package:flutter/material.dart';

class CardEducation extends StatelessWidget {
  final EducationNew edu;

  const CardEducation({Key? key, required this.edu}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return EcoCard(
      onTap: () {
        launchURL(edu.link);
      },
      margin: EcoDimens.paddingSmall,
      padding: EdgeInsets.zero,
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              edu.img,
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
                      edu.title,
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
                      edu.description,
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
