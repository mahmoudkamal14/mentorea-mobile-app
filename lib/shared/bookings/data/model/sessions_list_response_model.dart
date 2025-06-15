import 'package:json_annotation/json_annotation.dart';
import 'package:mentorea_mobile_app/shared/bookings/data/model/session_response_model.dart';

part 'sessions_list_response_model.g.dart';

@JsonSerializable(createToJson: false)
class SessionsListResponseModel {
  SessionsListResponseModel({
    required this.items,
    required this.pageNumber,
    required this.totalPages,
    required this.hasPreviousPage,
    required this.hasNextPage,
  });

  final List<SessionResponseModel>? items;
  final int? pageNumber;
  final int? totalPages;
  final bool? hasPreviousPage;
  final bool? hasNextPage;

  factory SessionsListResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SessionsListResponseModelFromJson(json);
}
