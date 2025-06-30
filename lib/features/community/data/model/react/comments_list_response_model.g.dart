// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentsListResponseModel _$CommentsListResponseModelFromJson(
        Map<String, dynamic> json) =>
    CommentsListResponseModel(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => CommentResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageNumber: (json['pageNumber'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      hasPreviousPage: json['hasPreviousPage'] as bool?,
      hasNextPage: json['hasNextPage'] as bool?,
    );
