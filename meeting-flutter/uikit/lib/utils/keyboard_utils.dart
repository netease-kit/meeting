import 'package:flutter/cupertino.dart';

class KeyboardUtils{

  static dismissKeyboard(BuildContext context){
    FocusScope.of(context).requestFocus(FocusNode());
  }

}