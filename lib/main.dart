import 'package:citix/src/providers/login_form_provider.dart';
import 'package:citix/src/services/auth_service.dart';
import 'package:citix/src/ui/main_router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';




void main() {
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider<LoginFormProvider> ( create: ( context ) => LoginFormProvider(), ),
          ChangeNotifierProvider<AuthService> ( create: ( context ) => AuthService(), ),
        ],
        child: MyApp(),
    ),



  );
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Citix',
      initialRoute: '/login_page',
      routes: mainRouter(context),
    );
  }
}
