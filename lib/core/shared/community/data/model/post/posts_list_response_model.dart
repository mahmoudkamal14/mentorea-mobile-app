import 'package:json_annotation/json_annotation.dart';
import 'package:mentorea_mobile_app/core/shared/community/data/model/post/post_response_model.dart';

part 'posts_list_response_model.g.dart';

@JsonSerializable(createToJson: false)
class PostsListResponseModel {
  PostsListResponseModel({
    required this.items,
    required this.pageNumber,
    required this.totalPages,
    required this.hasPreviousPage,
    required this.hasNextPage,
  });

  final List<PostResponseModel>? items;
  final int? pageNumber;
  final int? totalPages;
  final bool? hasPreviousPage;
  final bool? hasNextPage;

  factory PostsListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PostsListResponseModelFromJson(json);
}
