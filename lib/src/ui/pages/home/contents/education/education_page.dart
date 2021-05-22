import 'package:cubes/cubes.dart';
import 'package:eco_xepa/src/domain/model/education_new.dart';
import 'package:eco_xepa/src/infra/theme/dimens.dart';
import 'package:eco_xepa/src/ui/pages/home/contents/education/education_cube.dart';
import 'package:eco_xepa/src/ui/pages/home/widgets/card_education.dart';
import 'package:eco_xepa/src/ui/pages/home/widgets/card_education_highlight.dart';
import 'package:flutter/material.dart';

class EducationPage extends CubeWidget<EducationCube> {
  @override
  Widget buildView(BuildContext context, EducationCube cube) {
    return cube.listEducation.build<List<EducationNew>>((value) {
      return ListView.builder(
        itemCount: value.length + 2,
        itemBuilder: (context, index) {
          if (index == 0) {
            return _buildLogo();
          }
          if (index == 1) {
            return _buildDestaques(value);
          }

          return CardEducation(
            edu: value[(index - 2)],
          );
        },
      );
    });
  }

  Widget _buildLogo() {
    return SafeArea(
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
    );
  }

  Widget _buildDestaques(List<EducationNew> list) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 220,
          child: PageView.builder(
            itemCount: list.length > 3 ? 3 : list.length,
            controller: PageController(viewportFraction: 0.9),
            itemBuilder: (context, index) {
              return CardEducationHighlight(
                edu: list[index],
              );
            },
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
      ],
    );
  }
}
