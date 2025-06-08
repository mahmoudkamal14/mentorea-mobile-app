// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentResponseModel _$CommentResponseModelFromJson(
        Map<String, dynamic> json) =>
    CommentResponseModel(
      id: json['id'] as String?,
      content: json['content'] as String?,
      postId: json['postId'] as String?,
      userId: json['userId'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      pathImage: json['pathImage'],
      name: json['name'] as String?,
    );
