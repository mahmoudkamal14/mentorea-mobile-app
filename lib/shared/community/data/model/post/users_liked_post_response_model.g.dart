// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_liked_post_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsersLikedPostResponseModel _$UsersLikedPostResponseModelFromJson(
        Map<String, dynamic> json) =>
    UsersLikedPostResponseModel(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageNumber: (json['pageNumber'] as num?)?.toInt(),
      totalPages: (json['totalPages'] as num?)?.toInt(),
      hasPreviousPage: json['hasPreviousPage'] as bool?,
      hasNextPage: json['hasNextPage'] as bool?,
    );

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      userId: json['userId'] as String?,
      name: json['name'] as String?,
      pathImage: json['pathImage'] as String?,
    );
