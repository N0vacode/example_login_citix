
import 'package:citix/src/ui/pages/entities/user.dart';
import 'package:citix/src/ui/pages/home/widget/swiper_tours.dart';
import 'package:citix/src/ui/pages/tools/colors_tools.dart';
import 'package:citix/src/ui/pages/tools/size_tools.dart';
import 'package:citix/src/ui/pages/tools/text_style_tools.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {



    /// Argumentos que pensaba usar para pasar los datos
    //final parametros = ModalRoute.of(context)!.settings.arguments! as Map;

    final userData = Provider.of<User>(context, listen: false);


    return Scaffold(
        body: SafeArea(
      child: Container(
        child: Column(
          children: [

            Container(
              child: Column(

                children: <Widget>[

                  Padding(
                    padding: EdgeInsets.all(MySizes.homePadding),
                    child: Container(child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('¡Buenos Dias! ${userData.firstName}', style: MyTextStyle.homeTittleStyle,),
                        Icon(Icons.add_shopping_cart_sharp, color: MyColors.iconsColor,),

                      ],
                    )),
                  ),

                  SwiperTours(),



                    /// TODO Card Paisajes



                ],
              ),
            ),

          ],
        ),
      ),
    ));
  }
}
