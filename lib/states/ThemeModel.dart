import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github/common/global.dart';
import 'package:flutter_github/states/ProfileChangeNotifier.dart';

class ThemeModel extends ProfileChangeNotifier {
  MaterialColor get theme =>
      Global.themes.firstWhere((element) => element.value == profile.theme,
          orElse: ()=> Colors.blue);

  set theme(MaterialColor color) {
    if (color != theme) {
      profile.theme = color.shade500.value;
      notifyListeners();
    }
  }
}
