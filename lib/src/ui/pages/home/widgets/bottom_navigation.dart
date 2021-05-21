import 'package:eco_xepa/src/infra/theme/dimens.dart';
import 'package:eco_xepa/src/ui/components/eco_card.dart';
import 'package:flutter/material.dart';

enum TypeItemMenu { home, education }

class EcoBottomNavigation extends StatefulWidget {
  final ValueChanged<TypeItemMenu>? onChange;
  final VoidCallback? onAdd;

  const EcoBottomNavigation({Key? key, this.onChange, this.onAdd})
      : super(key: key);
  @override
  _EcoBottomNavigationState createState() => _EcoBottomNavigationState();
}

class _EcoBottomNavigationState extends State<EcoBottomNavigation> {
  TypeItemMenu _itemSelected = TypeItemMenu.home;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        EcoCard(
          margin: EcoDimens.paddingSmall,
          padding: EdgeInsets.zero,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildButton('Home', Icons.home, TypeItemMenu.home),
              SizedBox(),
              _buildButton('Educação', Icons.school, TypeItemMenu.education),
            ],
          ),
        ),
        SizedBox(
          width: 65,
          height: 65,
          child: ElevatedButton(
            onPressed: () => widget.onAdd?.call(),
            child: Center(child: Icon(Icons.add)),
            style: ButtonStyle(
              shape: MaterialStateProperty.all(CircleBorder()),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildButton(String label, IconData icon, TypeItemMenu type) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 100,
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {
              if (_itemSelected != type) {
                setState(() {
                  _itemSelected = type;
                });
                widget.onChange?.call(_itemSelected);
              }
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: _itemSelected == type
                      ? Theme.of(context).primaryColor
                      : Colors.grey,
                ),
                Text(
                  label,
                  style: TextStyle(
                      color: _itemSelected == type
                          ? Theme.of(context).primaryColor
                          : Colors.grey,
                      fontWeight: _itemSelected == type
                          ? FontWeight.bold
                          : FontWeight.normal),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
