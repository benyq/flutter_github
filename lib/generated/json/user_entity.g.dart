import 'package:flutter_github/generated/json/base/json_convert_content.dart';
import 'package:flutter_github/models/user_entity.dart';

UserEntity $UserEntityFromJson(Map<String, dynamic> json) {
	final UserEntity userEntity = UserEntity();
	final String? login = jsonConvert.convert<String>(json['login']);
	if (login != null) {
		userEntity.login = login;
	}
	final String? avatarUrl = jsonConvert.convert<String>(json['avatar_url']);
	if (avatarUrl != null) {
		userEntity.avatarUrl = avatarUrl;
	}
	final String? type = jsonConvert.convert<String>(json['type']);
	if (type != null) {
		userEntity.type = type;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		userEntity.name = name;
	}
	final String? company = jsonConvert.convert<String>(json['company']);
	if (company != null) {
		userEntity.company = company;
	}
	final String? blog = jsonConvert.convert<String>(json['blog']);
	if (blog != null) {
		userEntity.blog = blog;
	}
	final String? location = jsonConvert.convert<String>(json['location']);
	if (location != null) {
		userEntity.location = location;
	}
	final String? email = jsonConvert.convert<String>(json['email']);
	if (email != null) {
		userEntity.email = email;
	}
	final bool? hireable = jsonConvert.convert<bool>(json['hireable']);
	if (hireable != null) {
		userEntity.hireable = hireable;
	}
	final String? bio = jsonConvert.convert<String>(json['bio']);
	if (bio != null) {
		userEntity.bio = bio;
	}
	final int? publicRepos = jsonConvert.convert<int>(json['public_repos']);
	if (publicRepos != null) {
		userEntity.publicRepos = publicRepos;
	}
	final int? followers = jsonConvert.convert<int>(json['followers']);
	if (followers != null) {
		userEntity.followers = followers;
	}
	final int? following = jsonConvert.convert<int>(json['following']);
	if (following != null) {
		userEntity.following = following;
	}
	final String? createdAt = jsonConvert.convert<String>(json['created_at']);
	if (createdAt != null) {
		userEntity.createdAt = createdAt;
	}
	final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
	if (updatedAt != null) {
		userEntity.updatedAt = updatedAt;
	}
	final int? totalPrivateRepos = jsonConvert.convert<int>(json['total_private_repos']);
	if (totalPrivateRepos != null) {
		userEntity.totalPrivateRepos = totalPrivateRepos;
	}
	final int? ownedPrivateRepos = jsonConvert.convert<int>(json['owned_private_repos']);
	if (ownedPrivateRepos != null) {
		userEntity.ownedPrivateRepos = ownedPrivateRepos;
	}
	return userEntity;
}

Map<String, dynamic> $UserEntityToJson(UserEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['login'] = entity.login;
	data['avatar_url'] = entity.avatarUrl;
	data['type'] = entity.type;
	data['name'] = entity.name;
	data['company'] = entity.company;
	data['blog'] = entity.blog;
	data['location'] = entity.location;
	data['email'] = entity.email;
	data['hireable'] = entity.hireable;
	data['bio'] = entity.bio;
	data['public_repos'] = entity.publicRepos;
	data['followers'] = entity.followers;
	data['following'] = entity.following;
	data['created_at'] = entity.createdAt;
	data['updated_at'] = entity.updatedAt;
	data['total_private_repos'] = entity.totalPrivateRepos;
	data['owned_private_repos'] = entity.ownedPrivateRepos;
	return data;
}