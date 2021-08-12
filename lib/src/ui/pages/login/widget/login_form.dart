import 'package:citix/src/providers/login_form_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:citix/src/ui/pages/login/widget/password_text_filed.dart';
import 'package:citix/src/ui/pages/login/widget/user_text_field.dart';
import 'package:citix/src/ui/pages/tools/querry_global_tools.dart';
import 'package:citix/src/ui/pages/tools/size_tools.dart';
import 'package:provider/provider.dart';


class LoginForm extends StatefulWidget {

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    final loginForm = Provider.of<LoginFormProvider>(context);

    return Container(

      child: Form(
        // TODO: Se debe mantener la referencia del KEY
        key: loginForm.formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,

        child: Column(

          children: <Widget>[

            UserTextField(),

            SizedBox( height: Qu.globalScreen(context).height * MySizes.paddongTopLogin,
            ),

            PasswordTextField(),

          ],
        ),
      ),

    );


  }
}
