import 'package:flutter_github/generated/json/base/json_convert_content.dart';
import 'package:flutter_github/models/repo_entity.dart';

RepoEntity $RepoEntityFromJson(Map<String, dynamic> json) {
	final RepoEntity repoEntity = RepoEntity();
	final int? id = jsonConvert.convert<int>(json['id']);
	if (id != null) {
		repoEntity.id = id;
	}
	final String? name = jsonConvert.convert<String>(json['name']);
	if (name != null) {
		repoEntity.name = name;
	}
	final String? fullName = jsonConvert.convert<String>(json['full_name']);
	if (fullName != null) {
		repoEntity.fullName = fullName;
	}
	final String? owner = jsonConvert.convert<String>(json['owner']);
	if (owner != null) {
		repoEntity.owner = owner;
	}
	final String? parent = jsonConvert.convert<String>(json['parent']);
	if (parent != null) {
		repoEntity.parent = parent;
	}
	final bool? private = jsonConvert.convert<bool>(json['private']);
	if (private != null) {
		repoEntity.private = private;
	}
	final String? description = jsonConvert.convert<String>(json['description']);
	if (description != null) {
		repoEntity.description = description;
	}
	final bool? fork = jsonConvert.convert<bool>(json['fork']);
	if (fork != null) {
		repoEntity.fork = fork;
	}
	final String? language = jsonConvert.convert<String>(json['language']);
	if (language != null) {
		repoEntity.language = language;
	}
	final int? forksCount = jsonConvert.convert<int>(json['forks_count']);
	if (forksCount != null) {
		repoEntity.forksCount = forksCount;
	}
	final int? stargazersCount = jsonConvert.convert<int>(json['stargazers_count']);
	if (stargazersCount != null) {
		repoEntity.stargazersCount = stargazersCount;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		repoEntity.size = size;
	}
	final String? defaultBranch = jsonConvert.convert<String>(json['default_branch']);
	if (defaultBranch != null) {
		repoEntity.defaultBranch = defaultBranch;
	}
	final int? openIssuesCount = jsonConvert.convert<int>(json['open_issues_count']);
	if (openIssuesCount != null) {
		repoEntity.openIssuesCount = openIssuesCount;
	}
	final String? pushedAt = jsonConvert.convert<String>(json['pushed_at']);
	if (pushedAt != null) {
		repoEntity.pushedAt = pushedAt;
	}
	final String? createdAt = jsonConvert.convert<String>(json['created_at']);
	if (createdAt != null) {
		repoEntity.createdAt = createdAt;
	}
	final String? updatedAt = jsonConvert.convert<String>(json['updated_at']);
	if (updatedAt != null) {
		repoEntity.updatedAt = updatedAt;
	}
	final int? subscribersCount = jsonConvert.convert<int>(json['subscribers_count?']);
	if (subscribersCount != null) {
		repoEntity.subscribersCount = subscribersCount;
	}
	final RepoLicense? license = jsonConvert.convert<RepoLicense>(json['license']);
	if (license != null) {
		repoEntity.license = license;
	}
	return repoEntity;
}

Map<String, dynamic> $RepoEntityToJson(RepoEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['full_name'] = entity.fullName;
	data['owner'] = entity.owner;
	data['parent'] = entity.parent;
	data['private'] = entity.private;
	data['description'] = entity.description;
	data['fork'] = entity.fork;
	data['language'] = entity.language;
	data['forks_count'] = entity.forksCount;
	data['stargazers_count'] = entity.stargazersCount;
	data['size'] = entity.size;
	data['default_branch'] = entity.defaultBranch;
	data['open_issues_count'] = entity.openIssuesCount;
	data['pushed_at'] = entity.pushedAt;
	data['created_at'] = entity.createdAt;
	data['updated_at'] = entity.updatedAt;
	data['subscribers_count?'] = entity.subscribersCount;
	data['license'] = entity.license?.toJson();
	return data;
}

RepoLicense $RepoLicenseFromJson(Map<String, dynamic> json) {
	final RepoLicense repoLicense = RepoLicense();
	return repoLicense;
}

Map<String, dynamic> $RepoLicenseToJson(RepoLicense entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	return data;
}