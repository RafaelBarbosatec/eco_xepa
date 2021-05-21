import 'package:eco_xepa/src/infra/theme/dimens.dart';
import 'package:eco_xepa/src/ui/components/eco_button.dart';
import 'package:eco_xepa/src/ui/components/eco_card.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  bool _showContact = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Legume parara'),
        actions: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        top: false,
        child: ListView(
          children: [
            EcoCard(
              margin: EcoDimens.paddingSmall,
              padding: EdgeInsets.zero,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        width: double.maxFinite,
                        height: 200,
                        child: Image.network(
                          'https://www.sescsp.org.br/files/artigo/94136911-180d-41c0-b880-9ca1f7381b10.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: 200,
                        padding: EcoDimens.paddingSmall,
                        alignment: Alignment.bottomRight,
                        // margin: EdgeInsets.only(top: 55),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(0.8),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Text(
                          'R\$ 2,00/kg',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EcoDimens.paddingDefault,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Legumes do parara',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: EcoDimens.v5,
                        ),
                        Text(
                          'Validade: 29/06/2021',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: EcoDimens.v10,
                        ),
                        Text(
                          'orem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque quis dui scelerisque, rutrum eros ut, finibus magna. Donec nec iaculis odio. Nunc iaculis urna bibendum, feugiat augue a, ultrices diam. Aenean dolor lacus, fermentum ac risus eu, mollis commodo tellus. Donec vitae dui eu eros bibendum convallis vitae eu massa.',
                        ),
                        SizedBox(
                          height: EcoDimens.v10,
                        ),
                        Divider(),
                        _buildInfo('Preço:', 'R\$ 2,00/kg'),
                        SizedBox(height: EcoDimens.v5),
                        _buildInfo('Quantidade:', '10kg'),
                        SizedBox(height: EcoDimens.v5),
                        _buildInfo('Validade:', '29/06/2021'),
                        SizedBox(height: EcoDimens.v5),
                        _buildInfo('Expiração do Anúncio:', '25/06/2021'),
                        SizedBox(height: EcoDimens.v5),
                        ..._buildTypeDelivery(context),
                        SizedBox(height: EcoDimens.v5),
                        Divider(),
                        ..._buildDistribuidor()
                      ],
                    ),
                  ),
                ],
              ),
            ),
            _buildButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildInfo(String label, String value) {
    return Row(
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        SizedBox(
          width: EcoDimens.v10,
        ),
        Expanded(
          child: Text(
            value,
          ),
        ),
      ],
    );
  }

  List<Widget> _buildTypeDelivery(BuildContext context) {
    return [
      Text(
        'Tipo de entrega disponível:',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
      SizedBox(
        height: EcoDimens.v10,
      ),
      Row(
        children: [
          Container(
            padding: EcoDimens.paddingSmall,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              'Entrega no endereço ',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            width: EcoDimens.v10,
          ),
          Container(
            padding: EcoDimens.paddingSmall,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Theme.of(context).primaryColor)),
            child: Text(
              'Retirada no local',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
              ),
            ),
          )
        ],
      ),
    ];
  }

  List<Widget> _buildDistribuidor() {
    return [
      Text(
        'Produto oferecido por:',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      SizedBox(height: EcoDimens.v10),
      InkWell(
        borderRadius: BorderRadius.circular(25),
        onTap: () {},
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.network(
                'https://cdn.w600.comps.canstockphoto.com.br/loja-sexta-feira-desenho-pretas-cliparte-vetor_csp14599507.jpg',
                width: 50,
                height: 50,
              ),
            ),
            SizedBox(
              width: EcoDimens.v10,
            ),
            Expanded(child: Text('Mercadinho da Dona Vera')),
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
      ),
      if (_showContact) ...[
        SizedBox(
          height: EcoDimens.v10,
        ),
        _buildInfoMarket(),
      ],
    ];
  }

  Widget _buildButton() {
    return Padding(
      padding: EcoDimens.paddingSmall +
          EdgeInsets.only(
            bottom: EcoDimens.v10,
          ),
      child: EcoButton(
        onPressed: () {
          setState(() {
            _showContact = true;
          });
        },
        child: Text('Tenho interesse'),
      ),
    );
  }

  Widget _buildInfoMarket() {
    return Container(
      width: double.maxFinite,
      padding: EcoDimens.paddingSmall,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Dados de contato',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                decoration: TextDecoration.underline),
          ),
          SizedBox(height: EcoDimens.v10),
          _buildInfoContact('Telefone: ', '(63) 984699729'),
          SizedBox(height: EcoDimens.v5),
          _buildInfoContact('Endereço: ',
              'R. Vinte e Um de Abril, s/n - Centro, Araguaína - TO, 77804-100'),
        ],
      ),
    );
  }

  Widget _buildInfoContact(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(
          child: Text(
            value,
          ),
        )
      ],
    );
  }
}
