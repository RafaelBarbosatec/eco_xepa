import 'package:cubes/cubes.dart';
import 'package:eco_xepa/src/infra/theme/dimens.dart';
import 'package:eco_xepa/src/ui/components/eco_button.dart';
import 'package:eco_xepa/src/ui/components/eco_text_field.dart';
import 'package:eco_xepa/src/ui/pages/home/home_screen.dart';
import 'package:eco_xepa/src/ui/pages/success/success_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
      ),
      body: ListView(
        padding: EcoDimens.paddingSmall,
        children: [
          SizedBox(
            height: EcoDimens.v10,
          ),
          Text(
            'Para realizar seu cadastro é muito fácil!',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: EcoDimens.v5,
          ),
          Text('Basta preencher os campos abaixo.'),
          SizedBox(
            height: EcoDimens.v20,
          ),
          EcoTextField(
            observable: CTextFormFieldControl(text: '').obsValue,
            hint: 'Nome completo',
          ),
          SizedBox(
            height: EcoDimens.v20,
          ),
          EcoTextField(
            observable: CTextFormFieldControl(text: '').obsValue,
            hint: 'E-mail',
          ),
          SizedBox(
            height: EcoDimens.v20,
          ),
          EcoTextField(
            observable: CTextFormFieldControl(text: '').obsValue,
            hint: 'Telefone celular',
          ),
          SizedBox(
            height: EcoDimens.v20,
          ),
          EcoTextField(
            observable: CTextFormFieldControl(text: '').obsValue,
            hint: 'Senha',
            isPassword: true,
          ),
          SizedBox(
            height: EcoDimens.v20,
          ),
          EcoTextField(
            observable: CTextFormFieldControl(text: '').obsValue,
            hint: 'Confirme sua senha',
            isPassword: true,
          ),
          SizedBox(
            height: EcoDimens.v40,
          ),
          EcoButton(
            child: Text('Cadastrar'),
            onPressed: () {
              context.goToAndRemoveUntil(HomeScreen(), (route) => false);
              context.goTo(
                SuccesScreen(
                  msg: 'Cadastro realizado com sucesso!',
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
