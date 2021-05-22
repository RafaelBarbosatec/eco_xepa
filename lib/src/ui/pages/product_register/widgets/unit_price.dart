import 'package:flutter/material.dart';

class UnitPrice extends StatefulWidget {
  @override
  _UnitPriceState createState() => _UnitPriceState();
}

class _UnitPriceState extends State<UnitPrice> {
  int? selected = 1;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Radio<int>(
              value: 1,
              groupValue: selected,
              onChanged: (int? value) {
                setState(() {
                  selected = value;
                });
              },
            ),
            Text('Unidade'),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Radio<int>(
              value: 2,
              groupValue: selected,
              onChanged: (int? value) {
                setState(() {
                  selected = value;
                });
              },
            ),
            Text('Kilograma'),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Radio<int>(
              value: 3,
              groupValue: selected,
              onChanged: (int? value) {
                setState(() {
                  selected = value;
                });
              },
            ),
            Text('Grama'),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Radio<int>(
              value: 4,
              groupValue: selected,
              onChanged: (int? value) {
                setState(() {
                  selected = value;
                });
              },
            ),
            Text('Litro'),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Radio<int>(
              value: 5,
              groupValue: selected,
              onChanged: (int? value) {
                setState(() {
                  selected = value;
                });
              },
            ),
            Text('Mililitro'),
          ],
        ),
      ],
    );
  }
}
