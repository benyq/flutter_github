
import 'package:flutter/cupertino.dart';
import 'package:flutter_github/common/global.dart';
import 'package:flutter_github/models/profile_entity.dart';

class ProfileChangeNotifier extends ChangeNotifier {
  ProfileEntity get profile => Global.profile;

  @override
  void notifyListeners() {
    Global.saveProfile();
    super.notifyListeners();
  }
}