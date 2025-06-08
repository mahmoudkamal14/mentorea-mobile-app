import 'package:json_annotation/json_annotation.dart';

part 'give_feedback_request_body.g.dart';

@JsonSerializable(createToJson: false)
class GiveFeedbackRequestBody {
  GiveFeedbackRequestBody({
    required this.rating,
    required this.comment,
  });

  final int rating;
  final String? comment;

  factory GiveFeedbackRequestBody.fromJson(Map<String, dynamic> json) =>
      _$GiveFeedbackRequestBodyFromJson(json);
}
