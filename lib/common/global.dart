import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/cache_config_entity.dart';
import '../models/profile_entity.dart';
import 'CacheObject.dart';

// 提供五套可选主题色
const _themes = <MaterialColor>[
  Colors.blue,
  Colors.cyan,
  Colors.teal,
  Colors.green,
  Colors.red,
];

class Global {
  static late SharedPreferences _prefs;
  static ProfileEntity profile = ProfileEntity();
  static NetCache netCache = NetCache();

  // 可选的主题列表
  static List<MaterialColor> get themes => _themes;

  // 是否为release版
  static bool get isRelease => const bool.fromEnvironment("dart.vm.product");

  //初始化全局信息，会在APP启动时执行
  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    _prefs = await SharedPreferences.getInstance();
    var _profile = _prefs.getString("profile");
    if (_profile != null) {
      try {
        profile = ProfileEntity.fromJson(jsonDecode(_profile));
      } catch (e) {
        debugPrint('error: $e');
      }
    } else {
      // 默认主题索引为0，代表蓝色
      profile = ProfileEntity()..theme = 0;
    }

    profile.cache = profile.cache ?? CacheConfigEntity()
      ..enable = true
      ..maxAge = 3600
      ..maxCount = 100;


  }

  // 持久化Profile信息
  static saveProfile() =>
      _prefs.setString("profile", jsonEncode(profile.toJson()));
}
