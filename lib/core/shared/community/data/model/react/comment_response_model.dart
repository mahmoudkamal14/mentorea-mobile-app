import 'package:json_annotation/json_annotation.dart';

part 'comment_response_model.g.dart';

@JsonSerializable(createToJson: false)
class CommentResponseModel {
  CommentResponseModel({
    required this.id,
    required this.content,
    required this.postId,
    required this.userId,
    required this.createdAt,
    required this.pathImage,
    required this.name,
  });

  final String? id;
  final String? content;
  final String? postId;
  final String? userId;
  final DateTime? createdAt;
  final dynamic pathImage;
  final String? name;

  factory CommentResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CommentResponseModelFromJson(json);
}
