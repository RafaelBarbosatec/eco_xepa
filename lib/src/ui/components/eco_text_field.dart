import 'package:cubes/cubes.dart';
import 'package:flutter/material.dart';

class EcoTextField extends StatelessWidget {
  final ObservableValue<CTextFormFieldControl> observable;
  final String hint;
  final bool isPassword;

  const EcoTextField({Key? key, required this.observable, this.hint = '', this.isPassword = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CTextFormField(
      observable: observable,
      obscureTextButtonConfiguration: CObscureTextButtonConfiguration(
        show: isPassword,
      ),
      decoration: InputDecoration(
        hintText: hint,
        contentPadding: const EdgeInsets.only(
          left: 14.0,
          bottom: 8.0,
          top: 8.0,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey[400]!),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey[400]!),
          
        ),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}
