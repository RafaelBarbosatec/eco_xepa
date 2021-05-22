import 'package:cubes/cubes.dart';
import 'package:eco_xepa/src/domain/model/product.dart';

class ProductsCube extends Cube {
  final highlight = <Product>[].obsValue;
  final products = <Product>[].obsValue;

  @override
  void onReady(Object? arguments) {
    _addHighlights();
    _addProducts();

    super.onReady(arguments);
  }

  void _addHighlights() {
    highlight.add(
      Product(
          name: 'Larajas',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          price: 'R\$ 2,00/kg',
          validity: '19/07/2021',
          expiration: '24/05/2021',
          img:
              'https://img.mfrural.com.br/api/image?url=https://s3.amazonaws.com/mfrural-produtos-us/251068-257274-1355437-laranjas.jpg&width=480&height=288&mode=4'),
    );
  }

  void _addProducts() {
    products.add(
      Product(
          name: 'Larajas',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          price: 'R\$ 2,00/kg',
          validity: '19/07/2021',
          expiration: '24/05/2021',
          avaliation: '4.2',
          img:
              'https://img.mfrural.com.br/api/image?url=https://s3.amazonaws.com/mfrural-produtos-us/251068-257274-1355437-laranjas.jpg&width=480&height=288&mode=4'),
    );
  }

  void search(String text) {
    print(text);
  }
}
