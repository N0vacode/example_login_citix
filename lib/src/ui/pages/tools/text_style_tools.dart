import 'package:citix/src/ui/pages/tools/colors_tools.dart';
import 'package:citix/src/ui/pages/tools/size_tools.dart';
import 'package:flutter/cupertino.dart';

class MyTextStyle {

  static TextStyle loginTittleStyle = TextStyle(
          fontSize: MySizes.tittleLogin,
          color: MyColors.tittleColor,
  );

  static TextStyle loginSubtittleStyle = TextStyle(
    fontSize: MySizes.subtittleLogin,
    color: MyColors.subTittleColor,
  );

  static TextStyle loginHintStyle = TextStyle(
    color: MyColors.iconsColor
  );
}
