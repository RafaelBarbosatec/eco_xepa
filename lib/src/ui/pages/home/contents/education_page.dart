import 'package:eco_xepa/src/infra/theme/dimens.dart';
import 'package:eco_xepa/src/ui/pages/home/widgets/card_education.dart';
import 'package:eco_xepa/src/ui/pages/home/widgets/card_education_highlight.dart';
import 'package:flutter/material.dart';

class EducationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        SafeArea(
          bottom: false,
          child: Padding(
            padding: EcoDimens.paddingDefault,
            child: Center(
              child: Image.asset(
                'assets/app_logo.png',
                height: 50,
              ),
            ),
          ),
        ),
        Container(
          height: 220,
          child: PageView(
            controller: PageController(viewportFraction: 0.9, initialPage: 1),
            children: [
              CardEducationHighlight(),
              CardEducationHighlight(),
              CardEducationHighlight(),
            ],
          ),
        ),
        Padding(
          padding: EcoDimens.paddingSmall,
          child: Text(
            'Outros conteúdos',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        CardEducation(),
        CardEducation(),
        CardEducation(),
        CardEducation(),
      ],
    );
  }
}
