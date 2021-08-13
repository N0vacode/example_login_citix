import 'package:citix/src/ui/pages/tools/patch_global_tools.dart';

class MyImages extends GlobalPatch{

  String mail(){
    return '$IMAGES/email.png';
  }

  String password(){
    return '$IMAGES/key.png';
  }


  String loadingImage(){
    return '$IMAGES/loading.gif';
  }

  String noImage(){
    return '$IMAGES/no-image.jpg';
  }


}