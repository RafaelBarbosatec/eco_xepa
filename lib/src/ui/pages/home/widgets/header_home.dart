import 'package:eco_xepa/src/infra/theme/dimens.dart';
import 'package:eco_xepa/src/ui/pages/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:cubes/cubes.dart';

class HeaderHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EcoDimens.paddingSmall,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Araguaina - TO',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: EcoDimens.v5,
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: Colors.green,
              ),
            ],
          ),
          InkWell(
            onTap: () {
              context.goTo(ProfileScreen());
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://pbs.twimg.com/profile_images/3474429373/5e10d62f520bcb8419177497960e7b03.jpeg',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
