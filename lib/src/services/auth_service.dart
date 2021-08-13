import 'dart:convert';

import 'package:citix/src/providers/login_form_provider.dart';
import 'package:citix/src/ui/pages/entities/user.dart';
import 'package:citix/src/ui/pages/login/widget/dialog_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class AuthService with ChangeNotifier{

  final String _baseUrl = 'https://969rgz78f9.execute-api.us-east-1.amazonaws.com';



  Future<String?> validateUser(BuildContext context) async {
    final userData = Provider.of<User>(context, listen: false);
    final loginForms  = Provider.of<LoginFormProvider>(context, listen: false);

    Map<String, dynamic> data;
    List usersInfo =[];
    final url = Uri.parse('$_baseUrl/dev/api/user');

      /// TODO No logre Hacer funcionar el codigo de autenticacion con peticion post.
      /// No logre comprender bien como funciona su end-point para login sin web-token o no supe donde estaba.
      /// TODO Quizas haga falta algo que aun desconozco, pero por lo general uso el codigo similar al de abajo,
      /// En mis apis con Springboot
      /// TODO Recurri a un metodo poco ortodoxo con peticion GET para seguir con el ejericico


    /// Algo del codigo que pensaba usar mediante peticion con Tag POST..

      // var response = await http.post(url, body:{
      //   'email': email,
      //   'password': password
      // }).timeout(const Duration(seconds: 90));
      // var datos = jsonDecode(response.body);
      //
      // if(response.body != null){
      //   Navigator.pushReplacementNamed(context, '/home_page',
      //       arguments: { 'email': datos['email'], 'password': datos['password'], 'firstName': datos['firstName'] });
      //
      // }else{
      //   print('Usuario Incorrecto');
      // }


    /// Alternativa usada mediante el Tag GET, para continuar.
    /// Personalmente no me gusta mucho.

    try{

      await http.get(url).then((res) {

        data = jsonDecode(res.body);
        usersInfo.add(data);

        for(int i = 0; i < usersInfo.length; i ++){

          if(usersInfo[i]['email'] == loginForms.email && usersInfo[i]['password'] == loginForms.password){

            /// Asigno valores a clase usuario control de estado Provider.
            userData.id        = usersInfo[i]['id'];
            userData.picture   = usersInfo[i]['picture'];
            userData.firstName = usersInfo[i]['firstName'];
            userData.lastName  = usersInfo[i]['lastName'];
            userData.email     = usersInfo[i]['email'];
            userData.phone     = usersInfo[i]['phone'];
            userData.password  = usersInfo[i]['password'];

            loginForms.isLoading = false;

            /// Púde haber usado argumentos para enviar los datos,
            /// pero teniendo los datos en un provider, decidi hacerlo directo
            Navigator.pushReplacementNamed(context, '/home_page');

          }


        }


      });


    } catch(e) {
      showDialog(context: context, builder: (BuildContext){
        return DialogLogin(msm: 'No se pudo cargar el datos: $e', );
      });

      loginForms.isLoading = false;

    }

    return userData.firstName == '' ? 'error' : userData.firstName;
  }

}

