import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:citix/src/ui/pages/tools/colors_tools.dart';
import 'package:citix/src/ui/pages/tools/querry_global_tools.dart';
import 'package:citix/src/ui/pages/tools/size_tools.dart';
import 'package:citix/src/ui/pages/tools/text_style_tools.dart';



class InputDecorations{


  static InputDecoration loginInputDecoration({
    required BuildContext context,
    required String labelText,
    required String hintText,
    required String MyImage,
  }){
    return InputDecoration(

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          MySizes.borderRadiusTextFiled,),

      ),

      labelText: labelText,
      hintText: hintText,
      hintStyle: MyTextStyle.loginHintStyle,

      suffixIcon: Padding(
        padding: EdgeInsets.only(
          right: Qu.globalScreen(context).width * MySizes.paddingGlobalLogin,
        ),


        child: Container(
          child: Image.asset(MyImage,
            width: MySizes.imagesTextfieldLoginW,
            height: MySizes.imagesTextfieldLoginH,
            color: MyColors.iconsColor,),
        ),
      ),

    );

  }


}