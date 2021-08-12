import 'package:citix/src/ui/pages/tools/colors_tools.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class RegiaterButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        'Registrate',
        style: TextStyle(
          color: MyColors.logregButtonsColor,
        ),
      ),
    );
  }
}
