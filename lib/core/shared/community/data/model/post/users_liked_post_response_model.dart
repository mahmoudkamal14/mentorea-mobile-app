import 'package:json_annotation/json_annotation.dart';

part 'users_liked_post_response_model.g.dart';

@JsonSerializable(createToJson: false)
class UsersLikedPostResponseModel {
  UsersLikedPostResponseModel({
    required this.items,
    required this.pageNumber,
    required this.totalPages,
    required this.hasPreviousPage,
    required this.hasNextPage,
  });

  final List<Item>? items;
  final int? pageNumber;
  final int? totalPages;
  final bool? hasPreviousPage;
  final bool? hasNextPage;

  factory UsersLikedPostResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UsersLikedPostResponseModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class Item {
  Item({
    required this.userId,
    required this.name,
    required this.pathImage,
  });

  final String? userId;
  final String? name;
  final String? pathImage;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
