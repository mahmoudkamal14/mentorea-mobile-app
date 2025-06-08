import 'package:json_annotation/json_annotation.dart';

part 'create_post_request_body.g.dart';

@JsonSerializable()
class CreatePostRequestBody {
  CreatePostRequestBody({
    required this.content,
  });

  final String content;

  Map<String, dynamic> toJson() => _$CreatePostRequestBodyToJson(this);
}
