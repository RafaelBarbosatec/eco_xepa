import 'package:eco_xepa/src/infra/theme/dimens.dart';
import 'package:flutter/material.dart';

class EcoCard extends StatelessWidget {
  final Widget child;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Color color;
  final VoidCallback? onTap;

  const EcoCard(
      {Key? key,
      this.borderRadius,
      this.color = Colors.white,
      required this.child,
      this.margin,
      this.padding,
      this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding ?? EcoDimens.paddingDefault,
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? BorderRadius.circular(10),
        color: color,
        boxShadow: [
          BoxShadow(
            color: Color(0x14000000),
            offset: Offset(0, 1),
            blurRadius: 3,
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color(0x0c000000),
            offset: Offset(0, 5),
            blurRadius: 7,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Material(
        type: MaterialType.transparency,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: InkWell(
            borderRadius: BorderRadius.circular(10),
            splashColor: Theme.of(context).primaryColor.withOpacity(0.5),
            highlightColor: Colors.transparent,
            onTap: onTap,
            child: child,
          ),
        ),
      ),
    );
  }
}
