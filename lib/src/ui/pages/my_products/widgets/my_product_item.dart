import 'package:eco_xepa/src/infra/theme/dimens.dart';
import 'package:eco_xepa/src/ui/components/eco_card.dart';
import 'package:flutter/material.dart';

class MyProductItem extends StatelessWidget {
  final VoidCallback? onDelete;

  const MyProductItem({Key? key, this.onDelete}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        EcoCard(
          margin: EdgeInsets.only(
            top: EcoDimens.v10,
            left: EcoDimens.v10,
            right: EcoDimens.v10,
          ),
          padding: EdgeInsets.zero,
          onTap: () {},
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: 100,
                  child: Image.network(
                    'https://www.sescsp.org.br/files/artigo/94136911-180d-41c0-b880-9ca1f7381b10.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EcoDimens.paddingSmall,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Legumes parara',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                        ),
                        SizedBox(
                          height: EcoDimens.v2,
                        ),
                        Text(
                          'Validade: 10/05/2020',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: EcoDimens.v5,
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras eu dictum odio. Cras interdum vitae enim sed tempor.',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                          ),
                          maxLines: 2,
                        ),
                        SizedBox(
                          height: EcoDimens.v10,
                        ),
                        Row(
                          children: [
                            Text(
                              '15 Interessados',
                              style: TextStyle(color: Colors.greenAccent),
                            ),
                            Expanded(child: Container()),
                            Text(
                              'R\$ 4,00 /kg',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).primaryColor,
                              ),
                              maxLines: 2,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          transform: Matrix4.translationValues(0, -8, 0),
          margin: EdgeInsets.symmetric(
            horizontal: EcoDimens.v10,
            vertical: EcoDimens.v10,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            border: Border.all(color: Colors.grey.withOpacity(0.5)),
          ),
          child: Material(
            type: MaterialType.transparency,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildIconDelete(),
                _buildIconEdit(),
                _buildIconInteressados(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildIconDelete() {
    return InkWell(
      onTap: () {
        onDelete?.call();
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: EcoDimens.v10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.delete,
              color: Colors.red,
            ),
            SizedBox(width: EcoDimens.v5),
            Text('Remover'),
          ],
        ),
      ),
    );
  }

  Widget _buildIconEdit() {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: EcoDimens.v10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.edit,
              color: Colors.orange,
            ),
            SizedBox(width: EcoDimens.v5),
            Text('Editar'),
          ],
        ),
      ),
    );
  }

  Widget _buildIconInteressados() {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: EcoDimens.v10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.list,
              color: Colors.greenAccent,
            ),
            SizedBox(width: EcoDimens.v5),
            Text('Interessados'),
          ],
        ),
      ),
    );
  }
}
