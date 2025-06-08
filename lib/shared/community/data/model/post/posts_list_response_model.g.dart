// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostsListResponseModel _$PostsListResponseModelFromJson(
        Map<String, dynamic> json) =>
    PostsListResponseModel(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => PostResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageNumber: (json['pageNumber'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      hasPreviousPage: json['hasPreviousPage'] as bool?,
      hasNextPage: json['hasNextPage'] as bool?,
    );
