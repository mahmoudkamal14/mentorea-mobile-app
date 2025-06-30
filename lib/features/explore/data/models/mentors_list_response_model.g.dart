// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mentors_list_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MentorsListResponseModel _$MentorsListResponseModelFromJson(
        Map<String, dynamic> json) =>
    MentorsListResponseModel(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => MentorResponseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageNumber: (json['pageNumber'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      hasPreviousPage: json['hasPreviousPage'] as bool?,
      hasNextPage: json['hasNextPage'] as bool?,
    );
