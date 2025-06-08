// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostResponseModel _$PostResponseModelFromJson(Map<String, dynamic> json) =>
    PostResponseModel(
      id: json['id'] as String?,
      content: json['content'] as String?,
      userId: json['userId'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      pathImage: json['pathImage'],
      name: json['name'] as String?,
      countComment: (json['countComment'] as num?)?.toInt(),
      countLike: (json['countLike'] as num?)?.toInt(),
    );
