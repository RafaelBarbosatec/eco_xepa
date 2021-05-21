import 'package:eco_xepa/src/infra/theme/dimens.dart';
import 'package:eco_xepa/src/ui/components/eco_card.dart';
import 'package:eco_xepa/src/ui/pages/my_products/my_products.dart';
import 'package:flutter/material.dart';
import 'package:cubes/cubes.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
      ),
      body: ListView(
        children: [
          _buildHeader(),
          Divider(),
          _buildItemMenu('Dados pessoais', Icons.person),
          _buildItemMenu(
            'Meus produtos',
            Icons.shopping_bag_outlined,
            onTap: () {
              context.goTo(MyProducts());
            },
          ),
          _buildItemMenu('Configuracões', Icons.settings),
          _buildItemMenu(
            'Sair',
            Icons.exit_to_app,
            onTap: () {},
            color: Colors.red,
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 50,
        margin: EcoDimens.paddingSmall,
        alignment: Alignment.bottomRight,
        child: Text(
          'Versão 0.0.1',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return EcoCard(
      margin: EcoDimens.paddingSmall,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(30),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.network(
                'https://pbs.twimg.com/profile_images/3474429373/5e10d62f520bcb8419177497960e7b03.jpeg',
              ),
            ),
          ),
          SizedBox(
            width: EcoDimens.v20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mr. Bean',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Produtor rural',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.yellow[600],
          ),
          Text(
            '4.2',
            style: TextStyle(
              color: Colors.yellow[600],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItemMenu(
    String s,
    IconData icon, {
    VoidCallback? onTap,
    Color color = Colors.black,
  }) {
    return EcoCard(
      margin: EcoDimens.paddingSmall +
          EdgeInsets.symmetric(horizontal: EcoDimens.v20),
      padding: EdgeInsets.zero,
      onTap: onTap,
      child: Padding(
        padding: EcoDimens.paddingDefault,
        child: Row(
          children: [
            Icon(
              icon,
              color: color,
            ),
            SizedBox(
              width: EcoDimens.v20,
            ),
            Expanded(
                child: Text(
              s,
              style: TextStyle(
                color: color,
              ),
            )),
          ],
        ),
      ),
    );
  }
}
