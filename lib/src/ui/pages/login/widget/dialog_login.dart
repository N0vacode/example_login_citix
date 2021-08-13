import 'package:citix/src/providers/login_form_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';



class DialogLogin extends StatelessWidget {
  String msm;
  DialogLogin({required this.msm});
  @override
  Widget build(BuildContext context) {
    final loginForms  = Provider.of<LoginFormProvider>(context);
    return SimpleDialog(
      title: Text(msm),
      children: <Widget>[
        TextButton(
          child: Text('OK !'),
            onPressed: (){
            Navigator.maybePop(context);
            }
        ),
      ],

    );
  }
}
