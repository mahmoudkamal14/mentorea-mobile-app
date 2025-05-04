import 'package:json_annotation/json_annotation.dart';

part 'create_comment_request_body.g.dart';

@JsonSerializable()
class CreateCommentRequestBody {
  CreateCommentRequestBody({
    required this.content,
  });

  final String content;

  Map<String, dynamic> toJson() => _$CreateCommentRequestBodyToJson(this);
}
