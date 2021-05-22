import 'package:eco_xepa/src/infra/theme/dimens.dart';
import 'package:eco_xepa/src/ui/components/eco_button.dart';
import 'package:flutter/material.dart';
import 'package:cubes/cubes.dart';

class SuccesScreen extends StatelessWidget {
  final String msg;

  const SuccesScreen({
    Key? key,
    this.msg = 'Operação realizada com sucesso!',
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EcoDimens.paddingSmall,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                border: Border.all(color: Colors.white, width: 5),
              ),
              child: Icon(
                Icons.check,
                color: Colors.white,
                size: 80,
              ),
            ),
            SizedBox(
              height: EcoDimens.v20,
            ),
            Text(
              msg,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EcoDimens.paddingDefault,
        child: EcoButton(
          onPressed: () {
            context.pop();
          },
          child: Text(
            'OK',
            style: TextStyle(color: Colors.green),
          ),
          color: Colors.white,
        ),
      ),
    );
  }
}
