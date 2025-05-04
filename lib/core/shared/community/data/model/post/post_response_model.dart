import 'package:json_annotation/json_annotation.dart';

part 'post_response_model.g.dart';

@JsonSerializable(createToJson: false)
class PostResponseModel {
  PostResponseModel({
    required this.id,
    required this.content,
    required this.userId,
    required this.createdAt,
    required this.pathImage,
    required this.name,
    required this.countComment,
    required this.countLike,
  });

  final String? id;
  final String? content;
  final String? userId;
  final DateTime? createdAt;
  final dynamic pathImage;
  final String? name;
  final int? countComment;
  final int? countLike;

  factory PostResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PostResponseModelFromJson(json);
}
