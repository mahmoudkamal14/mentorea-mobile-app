// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sessions_list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionsListResponseModel _$SessionsListResponseModelFromJson(
        Map<String, dynamic> json) =>
    SessionsListResponseModel(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => SessionResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageNumber: (json['pageNumber'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      hasPreviousPage: json['hasPreviousPage'] as bool?,
      hasNextPage: json['hasNextPage'] as bool?,
    );
