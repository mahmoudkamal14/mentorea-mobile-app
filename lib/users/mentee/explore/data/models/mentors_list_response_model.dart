import 'package:json_annotation/json_annotation.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/data/models/mentor_response_model.dart';

part 'mentors_list_response_model.g.dart';

@JsonSerializable(createToJson: false)
class MentorsListResponseModel {
  MentorsListResponseModel({
    required this.items,
    required this.pageNumber,
    required this.totalPages,
    required this.hasPreviousPage,
    required this.hasNextPage,
  });

  final List<MentorResponseModel>? items;
  final int? pageNumber;
  final int? totalPages;
  final bool? hasPreviousPage;
  final bool? hasNextPage;

  factory MentorsListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MentorsListResponseModelFromJson(json);
}
