import 'package:cubes/cubes.dart';
import 'package:eco_xepa/src/infra/theme/dimens.dart';
import 'package:flutter/material.dart';

class CardSearch extends StatelessWidget {
  final String title;
  final String description;
  final ValueChanged<String>? onChanged;

  const CardSearch(
      {Key? key, this.title = '', this.description = '', this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EcoDimens.paddingSmall,
      padding: EcoDimens.paddingDefault,
      decoration: BoxDecoration(
        color: Colors.green[500],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: EcoDimens.v5,
          ),
          Text(
            description,
            style: TextStyle(
              color: Colors.white.withOpacity(0.7),
            ),
          ),
          SizedBox(
            height: EcoDimens.v20,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.green[700],
              borderRadius: BorderRadius.circular(15),
            ),
            child: CTextFormField(
              autofocus: false,
              observable: CTextFormFieldControl(text: '').obsValue,
              onChanged: onChanged,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Buscar',
                hintStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.white.withOpacity(0.5),
                ),
                contentPadding: const EdgeInsets.only(
                  top: 14.0,
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
