import 'dart:math';

import 'package:citix/src/providers/login_form_provider.dart';
import 'package:citix/src/services/auth_service.dart';
import 'package:citix/src/ui/pages/login/widget/dialog_login.dart';
import 'package:citix/src/ui/pages/tools/colors_tools.dart';
import 'package:citix/src/ui/pages/tools/size_tools.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class LoginButton extends StatefulWidget {

  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    final loginForms  = Provider.of<LoginFormProvider>(context);
    final authService = Provider.of<AuthService>(context);
    return Container(
      height: MySizes.containerLoginH,
      width: double.infinity,
      child: RaisedButton(
        color: MyColors.logregButtonsColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(MySizes.borderRadiusButton,
          ),
        ),

        onPressed: loginForms.isLoading ? null: () async{

          FocusScope.of(context).unfocus();

          if( !loginForms.isValidForm() ) return;

          loginForms.isLoading = true;

          final String? errorMessage = await authService.validateUser(context);

          if( errorMessage == 'error' ) {
            loginForms.isLoading = false;

            showDialog(context: context, builder: (BuildContext){
              return DialogLogin( msm: 'Error de Usuario o Contraseña', );
            });

          }


        },
        child: Text(
          loginForms.isLoading ? 'Validando' : 'Iniciar Sesíon',
          style: TextStyle(
            color: MyColors.textButtonLoginColor,
            fontSize: MySizes.textButtonLogin,
          ),
        ),
      ),
    );
  }
}
