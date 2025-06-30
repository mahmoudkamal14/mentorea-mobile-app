import 'package:json_annotation/json_annotation.dart';
import 'package:mentorea_mobile_app/features/community/data/model/react/comment_response_model.dart';

part 'comments_list_response_model.g.dart';

@JsonSerializable(createToJson: false)
class CommentsListResponseModel {
  CommentsListResponseModel({
    required this.items,
    required this.pageNumber,
    required this.totalPages,
    required this.hasPreviousPage,
    required this.hasNextPage,
  });

  final List<CommentResponseModel>? items;
  final int? pageNumber;
  final int? totalPages;
  final bool? hasPreviousPage;
  final bool? hasNextPage;

  factory CommentsListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CommentsListResponseModelFromJson(json);
}
