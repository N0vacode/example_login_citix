import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class AuthService extends ChangeNotifier{

  final String _baseUrl = '969rgz78f9.execute-api.us-east-1.amazonaws.com';



  Future<String?> validateUser(String email, String password) async {

    final Map<String, dynamic> authData = {
      'email' : email,
      'password': password
    };


    final url = Uri.https(_baseUrl, '/dev/api/user');

    final resp = await http.post(url, body: json.encode(authData));
    final Map<String, dynamic> decodedResp = json.decode(resp.body);

    print( decodedResp );

    return 'Erro login';

  }

}