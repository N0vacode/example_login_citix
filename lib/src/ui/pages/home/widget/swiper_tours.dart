import 'package:card_swiper/card_swiper.dart';
import 'package:citix/src/ui/pages/tools/images_tools.dart';
import 'package:citix/src/ui/pages/tools/querry_global_tools.dart';
import 'package:citix/src/ui/pages/tools/size_tools.dart';
import 'package:citix/src/ui/pages/tools/text_style_tools.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class SwiperTours extends StatefulWidget {

  @override
  _SwiperToursState createState() => _SwiperToursState();
}

class _SwiperToursState extends State<SwiperTours> {
  @override
  Widget build(BuildContext context) {
    final size = Qu.globalScreen(context);

    return Container(

      width: double.infinity,
      height: size.height * 0.5,
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('Tours Gastronómicos', style: MyTextStyle.homeSubTittleStyle,),
              ),
            ],
          ),
          Swiper(
            itemCount:  10,
            layout:  SwiperLayout.STACK,

            itemWidth: size.width * 0.7,
            itemHeight: size.height * 0.25,

            itemBuilder: ( BuildContext context, int index){

              return GestureDetector(
                /// lo uso para pasar los argumentos.
                //onTap: () => Navigator.pushNamed(context, 'details', arguments: ''),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(MySizes.borderRadiusButton),
                  child: FadeInImage(
                    placeholder: AssetImage(MyImages().noImage()),
                    image: NetworkImage('https://via.placeholder.com/400x300'),

                    fit: BoxFit.cover,
                  ),
                ),
              );

            },
          ),


        ],
      ),
    );
  }
}
