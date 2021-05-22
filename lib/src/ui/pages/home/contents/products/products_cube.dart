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

    highlight.add(
      Product(
          name: 'Sobras de EVA',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          price: 'R\$ 2,00/kg',
          validity: '19/07/2021',
          expiration: '24/05/2021',
          img:
              'https://cursoartecomenchimentoemeva.com/wp-content/uploads/2019/09/20181012_114829_0001-e1568662671123-750x410.png'),
    );

    highlight.add(
      Product(
          name: 'Aipim',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          price: 'R\$ 2,00/kg',
          validity: '19/07/2021',
          expiration: '24/05/2021',
          img:
              'https://imagens.mfrural.com.br/mfrural-produtos-us/295342-293927-1579393-aipim.jpg'),
    );
  }

  void _addProducts() {
    products.add(
      Product(
          name: 'Tomates',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          price: 'R\$ 2,00/kg',
          validity: '19/07/2021',
          expiration: '24/05/2021',
          avaliation: '4.2',
          img:
              'https://uploads.metropoles.com/wp-content/uploads/2019/03/18162119/WhatsApp-Image-2019-03-18-at-16.16.25.jpeg'),
    );

    products.add(
      Product(
          name: 'Sobras de azulejo',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          price: 'R\$ 3,00/kg',
          validity: '19/07/2021',
          expiration: '24/05/2021',
          img:
              'https://i.pinimg.com/originals/43/db/67/43db67d2c2bfe9a0e24b798da542f2e8.jpg'),
    );

    products.add(
      Product(
          name: 'Casca de frutas e legumes',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          price: 'R\$ 3,00/kg',
          validity: '19/07/2021',
          expiration: '24/05/2021',
          img:
              'https://img.olhardigital.com.br/wp-content/uploads/2021/03/restos-de-comida.jpg'),
    );
  }

  void search(String text) {
    print(text);
  }
}
