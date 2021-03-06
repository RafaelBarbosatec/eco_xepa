import 'package:eco_xepa/src/domain/model/product.dart';
import 'package:eco_xepa/src/infra/theme/dimens.dart';
import 'package:eco_xepa/src/infra/util/function.dart';
import 'package:eco_xepa/src/ui/components/eco_button.dart';
import 'package:eco_xepa/src/ui/components/eco_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share/share.dart';
import 'package:cubes/cubes.dart';

class ProductDetailScreen extends StatefulWidget {

  final Product item;

  const ProductDetailScreen({Key? key, required this.item}) : super(key: key);
  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  bool _showContact = false;
  String _adressText =
      'R. Vinte e Um de Abril, s/n - Centro, Araguaína - TO, 77804-100';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.item.name),
        actions: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              Share.share('Olha esse produto: https://ecoxepa.com.com');
            },
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
                          widget.item.img,
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
                          widget.item.price,
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
                          widget.item.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: EcoDimens.v5,
                        ),
                        Text(
                          'Validade: ${widget.item.validity}',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: EcoDimens.v10,
                        ),
                        Text(
                          widget.item.description,
                        ),
                        SizedBox(
                          height: EcoDimens.v10,
                        ),
                        Divider(),
                        _buildInfo('Preço:', widget.item.price),
                        SizedBox(height: EcoDimens.v5),
                        _buildInfo('Quantidade:', '10kg'),
                        SizedBox(height: EcoDimens.v5),
                        _buildInfo('Validade:', widget.item.validity),
                        SizedBox(height: EcoDimens.v5),
                        _buildInfo('Expiração do Anúncio:', widget.item.expiration),
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
            if (!_showContact) _buildButton(),
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
      Wrap(
        runSpacing: 10,
        spacing: 10,
        children: [
          Container(
            padding: EcoDimens.paddingSmall,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              'Entrega em seu endereço ',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Dados de contato',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  decoration: TextDecoration.underline,
                ),
              ),
              Text(
                'Clique e converse',
                style: TextStyle(color: Colors.blue, fontSize: 10),
              )
            ],
          ),
          SizedBox(height: EcoDimens.v10),
          InkWell(
            onTap: () {
              launchURL('tel:(63) 984699729');
            },
            child: _buildInfoContact('', '(63) 984699729', icon: Icons.phone),
          ),
          SizedBox(height: EcoDimens.v5),
          InkWell(
            onTap: () => _copyToClipBoard(_adressText),
            child: _buildInfoContact(
              '',
              _adressText,
              icon: Icons.home,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoContact(String label, String value, {IconData? icon}) {
    return Row(
      children: [
        icon != null
            ? Icon(icon)
            : Text(
                label,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
        SizedBox(
          width: EcoDimens.v10,
        ),
        Expanded(
          child: Text(
            value,
          ),
        )
      ],
    );
  }

  void _copyToClipBoard(String text) async {
    ClipboardData data = ClipboardData(text: text);
    await Clipboard.setData(data);
    context.showSnackBar(SnackBar(
      content: Text('Copiado'),
    ));
  }
}
