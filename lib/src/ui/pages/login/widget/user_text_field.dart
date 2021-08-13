import 'package:citix/src/providers/login_form_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:citix/src/ui/pages/tools/images_tools.dart';
import 'package:citix/src/ui/pages/tools/input_decorations.dart';
import 'package:provider/provider.dart';


class UserTextField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final loginForms = Provider.of<LoginFormProvider>(context);
    return TextFormField(
      autocorrect: false,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecorations.loginInputDecoration(
          context: context,
          hintText: 'name@domain.com',
          labelText: 'Correo',
          MyImage: MyImages().mail(),
      ),
      onChanged: (email_usuario) => loginForms.email = email_usuario,

      validator: ( value ){

        String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
        RegExp regExp  = new RegExp(pattern);

        return regExp.hasMatch(value ?? '')
            ? null : 'Correo Invalido';

      },

    );
  }
}
