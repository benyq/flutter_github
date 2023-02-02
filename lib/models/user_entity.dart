import 'package:flutter_github/generated/json/base/json_field.dart';
import 'package:flutter_github/generated/json/user_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class UserEntity {

	late String login;
	@JSONField(name: "avatar_url")
	late String avatarUrl;
	late String type;
	late String? name;
	late String? company;
	late String? blog;
	late String? location;
	late String? email;
	late bool? hireable;
	late String? bio;
	@JSONField(name: "public_repos")
	late int publicRepos;
	late int followers;
	late int following;
	@JSONField(name: "created_at")
	late String createdAt;
	@JSONField(name: "updated_at")
	late String updatedAt;
	@JSONField(name: "total_private_repos")
	late int totalPrivateRepos;
	@JSONField(name: "owned_private_repos")
	late int ownedPrivateRepos;
  
  UserEntity();

  factory UserEntity.fromJson(Map<String, dynamic> json) => $UserEntityFromJson(json);

  Map<String, dynamic> toJson() => $UserEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}