import 'package:eco_xepa/src/infra/theme/dimens.dart';
import 'package:eco_xepa/src/ui/components/eco_button.dart';
import 'package:flutter/material.dart';

class TypeDeliverySelector extends StatefulWidget {
  final ValueChanged<List<int>>? onChange;

  const TypeDeliverySelector({Key? key, this.onChange}) : super(key: key);

  @override
  _TypeDeliverySelectorState createState() => _TypeDeliverySelectorState();
}

class _TypeDeliverySelectorState extends State<TypeDeliverySelector> {
  List<int> idList = [];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildItem('Entrega em seu Endereço', 0),
          SizedBox(width: EcoDimens.v10),
          _buildItem('Retirada no local', 1),
        ],
      ),
    );
  }

  Widget _buildItem(String label, int id) {
    return InkWell(
      onTap: () {
        setState(() {
          if (idList.contains(id)) {
            idList.remove(id);
          } else {
            idList.add(id);
          }
          widget.onChange?.call(idList);
        });
      },
      child: Container(
        padding: EcoDimens.paddingSmall,
        child: Text(
          label,
          style: TextStyle(
            color: _containId(id) ? Colors.white : Colors.green,
          ),
        ),
        decoration: BoxDecoration(
          color: _containId(id) ? Colors.green : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.green),
        ),
      ),
    );
  }

  bool _containId(int id) {
    return idList.contains(id);
  }
}
