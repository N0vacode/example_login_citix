import 'package:flutter/widgets.dart';

class User extends ChangeNotifier{
  int? _id;
  String? _picture;
  String _firstName = '';
  String? _lastName;
  String? _email;
  String? _phone;
  String? _password;
  bool _statusLogin = false;

  bool get statusLogin => _statusLogin;

  set statusLogin(bool value) {
    _statusLogin = value;
    notifyListeners();
  }

  int get id => _id!;

  set id(int value) {
    _id = value;
    notifyListeners();
  }


  String get picture => _picture!;

  set picture(String value) {
    _picture = value;
    notifyListeners();
  }

  String get firstName => _firstName;

  set firstName(String value) {
    _firstName = value;
    notifyListeners();
  }

  String get lastName => _lastName!;

  set lastName(String value) {
    _lastName = value;
    notifyListeners();
  }

  String get email => _email!;

  set email(String value) {
    _email = value;
    notifyListeners();
  }

  String get phone => _phone!;

  set phone(String value) {
    _phone = value;
    notifyListeners();
  }


  String get password => _password!;

  set password(String value) {
    _password = value;
    notifyListeners();
  }
}