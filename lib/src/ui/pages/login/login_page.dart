import 'package:citix/src/ui/pages/login/widget/login_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:flutter/rendering.dart';

import 'package:citix/src/ui/pages/login/widget/login_header.dart';
import 'package:citix/src/ui/pages/login/widget/login_button.dart';
import 'package:citix/src/ui/pages/login/widget/register_button.dart';
import 'package:citix/src/ui/pages/tools/colors_tools.dart';
import 'package:citix/src/ui/pages/tools/querry_global_tools.dart';
import 'package:citix/src/ui/pages/tools/size_tools.dart';




class LoginPage extends StatefulWidget {


  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(
            Qu.globalScreen(context).width * MySizes.paddingGlobalLogin,
          ),
          child: Column(
            children: <Widget>[

              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[

                      LoginHeader(),

                      SizedBox(
                        height: Qu.globalScreen(context).height * MySizes.paddingGlobalLogin,
                      ),


                      LoginForm(),


                    ],
                  ),
                ),
              ),


              Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: Qu.globalScreen(context).height * MySizes.paddongTopLogin,
                    ),

                    LoginButton(),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('¿No tienes Cuenta? ', style: TextStyle( color: MyColors.subTittleColor ,),),
                        RegiaterButton(),
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
