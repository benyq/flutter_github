import 'package:flutter_github/models/user_entity.dart';
import 'package:flutter_github/states/ProfileChangeNotifier.dart';

class UserModel extends ProfileChangeNotifier {

  UserEntity? get user => profile.user;

// APP是否登录(如果有用户信息，则证明登录过)
  bool get isLogin => user != null;

  set user(UserEntity? user) {
    if (user?.login != profile.user?.login) {
      profile.lastLogin = profile.user?.login;
      profile.user = user;
      notifyListeners();
    }
  }
}
