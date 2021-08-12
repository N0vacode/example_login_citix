import 'package:citix/src/providers/login_form_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:citix/src/ui/pages/tools/images_tools.dart';
import 'package:citix/src/ui/pages/tools/input_decorations.dart';
import 'package:provider/provider.dart';


class PasswordTextField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final loginForm = Provider.of<LoginFormProvider>(context);
    return TextFormField(
      autocorrect: false,
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecorations.loginInputDecoration(
        context: context,
        hintText: '**********',
        labelText: 'Contraseña',
        MyImage: MyImages().password()
      ),
      onChanged: (password_usuario) => loginForm.password = password_usuario,

      validator: ( value ){

        return (value != null && value.length >= 6)? null :
        'La Contraseña debe tener al menos 6 caracteres';


      },
    );
  }
}
