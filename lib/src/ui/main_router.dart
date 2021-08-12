//---------------------------------------------------------------------------

import 'package:citix/src/ui/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:citix/src/ui/pages/login/login_page.dart';

//---------------------------------------------------------------------------

Map<String, WidgetBuilder> mainRouter( BuildContext context ){

  Map<String, WidgetBuilder> routers = {

    '/login_page': ( context ) => LoginPage(),
    '/home_page' : ( context ) => HomePage(),

  };


  return routers;
}

//---------------------------------------------------------------------------