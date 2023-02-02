import 'package:flutter_github/generated/json/base/json_field.dart';
import 'package:flutter_github/generated/json/profile_entity.g.dart';
import 'dart:convert';

import 'package:flutter_github/models/cache_config_entity.dart';
import 'package:flutter_github/models/user_entity.dart';

@JsonSerializable()
class ProfileEntity {

  UserEntity? user;
  String? token;
  int theme = 0;
  CacheConfigEntity? cache;
  String? lastLogin;
  String? locale;
  
  ProfileEntity();

  factory ProfileEntity.fromJson(Map<String, dynamic> json) => $ProfileEntityFromJson(json);

  Map<String, dynamic> toJson() => $ProfileEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}