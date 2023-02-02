import 'package:flutter_github/generated/json/base/json_field.dart';
import 'package:flutter_github/generated/json/repo_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class RepoEntity {

	late int id;
	late String name;
	@JSONField(name: "full_name")
	late String fullName;
	late String owner;
	late String? parent;
	late bool private;
	late String description;
	late bool fork;
	late String? language;
	@JSONField(name: "forks_count")
	late int forksCount;
	@JSONField(name: "stargazers_count")
	late int stargazersCount;
	late int size;
	@JSONField(name: "default_branch")
	late String defaultBranch;
	@JSONField(name: "open_issues_count")
	late int openIssuesCount;
	@JSONField(name: "pushed_at")
	late String pushedAt;
	@JSONField(name: "created_at")
	late String createdAt;
	@JSONField(name: "updated_at")
	late String updatedAt;
	@JSONField(name: "subscribers_count")
	late int? subscribersCount;
	late RepoLicense? license;
  
  RepoEntity();

  factory RepoEntity.fromJson(Map<String, dynamic> json) => $RepoEntityFromJson(json);

  Map<String, dynamic> toJson() => $RepoEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class RepoLicense {

	late String key;
	late String name;
	@JSONField(name: "spdx_id")
	late String spdxId;
	late String url;
	@JSONField(name: "node_id")
	late String nodeId;
  
  RepoLicense();

  factory RepoLicense.fromJson(Map<String, dynamic> json) => $RepoLicenseFromJson(json);

  Map<String, dynamic> toJson() => $RepoLicenseToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}