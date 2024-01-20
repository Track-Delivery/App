import 'package:flutter/material.dart';

class TCheckboxTheme{
  // make constructor private and inaccessible outside the class
  TCheckboxTheme._();
  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateColor.resolveWith((states){
      if (states.contains(MaterialState.selected)){
        return Colors.white;
      } else{
        return Colors.black;
      }
    }),
    fillColor: MaterialStateColor.resolveWith((states) {
      if(states.contains(MaterialState.selected)){
        return Colors.blue;
      } else {
        return Colors.transparent;
      }
    }),
  );
  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateColor.resolveWith((states){
      if (states.contains(MaterialState.selected)){
        return Colors.white;
      } else{
        return Colors.black;
      }
    }),
    fillColor: MaterialStateColor.resolveWith((states) {
      if(states.contains(MaterialState.selected)){
        return Colors.blue;
      } else {
        return Colors.transparent;
      }
    }),
  );

}