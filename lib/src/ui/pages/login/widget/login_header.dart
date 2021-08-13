import 'package:citix/src/ui/pages/tools/colors_tools.dart';
import 'package:citix/src/ui/pages/tools/size_tools.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Iniciar Sesión', style: TextStyle(
                color: MyColors.tittleColor,
                fontSize: MySizes.tittleLogin),
            ),

            Text('Añade tus datos para inscribirte', style: TextStyle(
                color: MyColors.subTittleColor),
            ),
          ],
        )
      ],
    );
  }
}
