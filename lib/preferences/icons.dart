// Place fonts/customIcon.ttf in your fonts/ directory and
// add the following to your pubspec.yaml
// flutter:
//   fonts:
//    - family: customIcon
//      fonts:
//       - asset: fonts/customIcon.ttf
import 'package:flutter/widgets.dart';

class CustomIcon {
  CustomIcon._();

  static const String _fontFamily = 'customIcon';

  static const IconData exit = IconData(0xe915, fontFamily: _fontFamily);
  static const IconData favorite = IconData(0xe916, fontFamily: _fontFamily);
  static const IconData home = IconData(0xe918, fontFamily: _fontFamily);
  static const IconData message = IconData(0xe91f, fontFamily: _fontFamily);
  static const IconData profile = IconData(0xe925, fontFamily: _fontFamily);
  static const IconData trash = IconData(0xe928, fontFamily: _fontFamily);

  static const String headerProfile = ''' 
  <svg width="36" height="39" viewBox="0 0 36 39" fill="none" xmlns="http://www.w3.org/2000/svg">
<circle cx="18" cy="9" r="9" fill="white"/>
<path d="M18 24C13.5 24 2.25 26.25 0 33C2.25 39.75 11.25 42 18 42C24.75 42 33.75 39.75 36 33C33.75 26.25 22.5 24 18 24Z" fill="white"/>
</svg>
  ''';
}


