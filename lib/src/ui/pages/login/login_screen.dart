import 'package:cubes/cubes.dart';
import 'package:eco_xepa/src/infra/theme/dimens.dart';
import 'package:eco_xepa/src/ui/components/eco_button.dart';
import 'package:eco_xepa/src/ui/components/eco_card.dart';
import 'package:eco_xepa/src/ui/components/eco_text_field.dart';
import 'package:eco_xepa/src/ui/pages/home/home_screen.dart';
import 'package:eco_xepa/src/ui/pages/register/register_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.green[800],
        ),
        Container(
          height: double.maxFinite,
          child: Image.asset(
            'assets/bg_login.png',
            fit: BoxFit.cover,
          ),
        ),
        Container(
          color: Colors.black.withOpacity(0.7),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: _buildCard(context),
        ),
      ],
    );
  }

  Widget _buildCard(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Padding(
          padding: EcoDimens.paddingMedium,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              EcoCard(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: EcoDimens.v20,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: EcoDimens.v40),
                      child: Image.asset('assets/app_logo.png'),
                    ),
                    SizedBox(
                      height: EcoDimens.v40,
                    ),
                    EcoTextField(
                      observable: CTextFormFieldControl(text: '').obsValue,
                      hint: 'E-mail',
                    ),
                    SizedBox(
                      height: EcoDimens.v10,
                    ),
                    EcoTextField(
                      observable: CTextFormFieldControl(text: '').obsValue,
                      hint: 'Senha',
                      isPassword: true,
                    ),
                    SizedBox(
                      height: EcoDimens.v20,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Esqueceu sua senha?'),
                        SizedBox(
                          width: EcoDimens.v10,
                        ),
                        Text(
                          'Clique aqui',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: EcoDimens.v20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: EcoButton(
                            onPressed: () {
                              context.goToAndRemoveUntil(
                                HomeScreen(),
                                (_) => false,
                              );
                            },
                            child: Text('Entrar'),
                          ),
                        ),
                        SizedBox(
                          width: EcoDimens.v20,
                        ),
                        Expanded(
                          child: EcoButton(
                            onPressed: () {
                              context.goTo(RegisterScreen());
                            },
                            child: Text('Cadastrar'),
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
