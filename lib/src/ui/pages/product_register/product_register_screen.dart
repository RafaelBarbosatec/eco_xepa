import 'package:cubes/cubes.dart';
import 'package:eco_xepa/src/infra/theme/dimens.dart';
import 'package:eco_xepa/src/ui/components/eco_button.dart';
import 'package:eco_xepa/src/ui/components/eco_card.dart';
import 'package:eco_xepa/src/ui/components/eco_text_field.dart';
import 'package:eco_xepa/src/ui/pages/product_register/widgets/type_delivery_selector.dart';
import 'package:eco_xepa/src/ui/pages/success/success_screen.dart';
import 'package:flutter/material.dart';

class ProductRegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastre um produto'),
      ),
      body: ListView(
        children: [
          EcoCard(
            margin: EcoDimens.paddingSmall,
            padding: EdgeInsets.zero,
            child: Column(
              children: [
                _buildImage(),
                _buildFields(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImage() {
    return Container(
      width: double.maxFinite,
      height: 200,
      child: Stack(
        children: [
          Center(
            child: Icon(
              Icons.image,
              size: 200,
              color: Colors.grey,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              color: Colors.black.withOpacity(0.5),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.white),
                  ),
                  padding: EcoDimens.paddingSmall,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFields(BuildContext context) {
    return Padding(
      padding: EcoDimens.paddingDefault,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EcoTextField(
            observable: CTextFormFieldControl(text: '').obsValue,
            hint: 'Nome do produto',
          ),
          SizedBox(
            height: EcoDimens.v20,
          ),
          EcoTextField(
            observable: CTextFormFieldControl(text: '').obsValue,
            hint: 'Description',
          ),
          SizedBox(
            height: EcoDimens.v20,
          ),
          EcoTextField(
            observable: CTextFormFieldControl(text: '').obsValue,
            hint: 'Quantidade',
          ),
          SizedBox(
            height: EcoDimens.v20,
          ),
          EcoTextField(
            observable: CTextFormFieldControl(text: '').obsValue,
            hint: 'Preço',
          ),
          SizedBox(
            height: EcoDimens.v20,
          ),
          EcoTextField(
            observable: CTextFormFieldControl(text: '').obsValue,
            hint: 'Data de validade',
          ),
          SizedBox(
            height: EcoDimens.v20,
          ),
          EcoTextField(
            observable: CTextFormFieldControl(text: '').obsValue,
            hint: 'Data de expiração do anúncio',
          ),
          SizedBox(
            height: EcoDimens.v20,
          ),
          Text(
            'Tipos de entredas',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: EcoDimens.v10,
          ),
          TypeDeliverySelector(),
          SizedBox(height: EcoDimens.v40),
          SizedBox(
            width: double.maxFinite,
            child: EcoButton(
              onPressed: () {
                context.pop();
                context.goTo(SuccesScreen(
                  msg: 'Produto cadastrado com sucesso!',
                ));
              },
              child: Text('Salvar'),
            ),
          ),
        ],
      ),
    );
  }
}
