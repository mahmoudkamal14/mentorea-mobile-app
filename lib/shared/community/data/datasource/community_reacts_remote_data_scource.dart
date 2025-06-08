import 'package:dio/dio.dart';
import 'package:mentorea_mobile_app/core/networking/api_constants.dart';
import 'package:mentorea_mobile_app/shared/community/data/model/react/comment_response_model.dart';
import 'package:mentorea_mobile_app/shared/community/data/model/react/comments_list_response_model.dart';
import 'package:mentorea_mobile_app/shared/community/data/model/react/create_comment_request_body.dart';
import 'package:mentorea_mobile_app/shared/community/data/model/react/toggle_like_request_body.dart';
import 'package:mentorea_mobile_app/shared/community/data/model/post/users_liked_post_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'community_reacts_remote_data_scource.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class CommunityReactsRemoteDataScource {
  factory CommunityReactsRemoteDataScource(Dio dio, {String baseUrl}) =
      _CommunityReactsRemoteDataScource;

  // Get all comments for a post
  @GET(ApiConstants.getAllCommentsPost)
  Future<CommentsListResponseModel> getAllCommentsPost(
    @Header('Authorization') String userToken,
    @Path('postId') String postId,
    @Query('SortDirection') String sortDirection,
    @Query('PageNumber') int pageNumber,
    @Query('PageSize') int pageSize,
  );
  // Get comment details
  @GET(ApiConstants.getCommentPost)
  Future<CommentResponseModel> getCommentPost(
    @Header('Authorization') String userToken,
    @Path('postId') String postId,
    @Path('commentId') String commentId,
  );
  // Create comment
  @POST(ApiConstants.createComment)
  Future<CommentResponseModel> createComment(
    @Header('Authorization') String userToken,
    @Path('postId') String postId,
    @Body() CreateCommentRequestBody createCommentRequestBody,
  );
  // Update comment
  @PUT(ApiConstants.updateComment)
  Future<void> updateComment(
    @Header('Authorization') String userToken,
    @Path('postId') String postId,
    @Path('commentId') String commentId,
    @Body() CreateCommentRequestBody createCommentRequestBody,
  );
  // Delete comment
  @DELETE(ApiConstants.deleteComment)
  Future<void> deleteComment(
    @Header('Authorization') String userToken,
    @Path('postId') String postId,
    @Path('commentId') String commentId,
  );
  // Toggle like post
  @POST(ApiConstants.toggleLikePost)
  Future<void> toggleLikePost(
    @Header('Authorization') String userToken,
    @Path('postId') String postId,
    @Body() ToggleLikeRequestBody toggleLikeRequestBody,
  );
  // Count likes post
  @GET(ApiConstants.countLikePost)
  Future<void> countLikePost(
    @Header('Authorization') String userToken,
    @Path('postId') String postId,
  );
  // Get users who liked post
  @GET(ApiConstants.usersLikedPost)
  Future<UsersLikedPostResponseModel> usersLikedPost(
    @Header('Authorization') String userToken,
    @Path('postId') String postId,
    @Query('PageNumber') int pageNumber,
    @Query('PageSize ') int pageSize,
  );
}
