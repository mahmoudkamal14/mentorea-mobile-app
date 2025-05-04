import 'package:dio/dio.dart';
import 'package:mentorea_mobile_app/core/networking/api_constants.dart';
import 'package:mentorea_mobile_app/core/shared/community/data/model/post/create_post_request_body.dart';
import 'package:mentorea_mobile_app/core/shared/community/data/model/post/post_response_model.dart';
import 'package:mentorea_mobile_app/core/shared/community/data/model/post/posts_list_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'community_post_remote_data_source.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class CommunityPostRemoteDataSource {
  factory CommunityPostRemoteDataSource(Dio dio, {String baseUrl}) =
      _CommunityPostRemoteDataSource;

  // Ceate Post
  @POST(ApiConstants.createPost)
  Future<PostResponseModel> createPost(
    @Header('Authorization') String userToken,
    @Body() CreatePostRequestBody createPostRequestBody,
  );
  // Update Post
  @PUT(ApiConstants.updatePost)
  Future<void> updatePost(
    @Header('Authorization') String userToken,
    @Body() CreatePostRequestBody createPostRequestBody,
    @Path('postId') String postId,
  );
  // Delete Post
  @DELETE(ApiConstants.deletePost)
  Future<void> deletePost(
    @Header('Authorization') String userToken,
    @Path('postId') String postId,
  );
  // Get all posts
  @GET(ApiConstants.getAllPost)
  Future<PostsListResponseModel> getAllPosts(
    @Header('Authorization') String userToken,
  );
  // Get posts by followed mentors
  @GET(ApiConstants.getPostsFollowingMentors)
  Future<PostsListResponseModel> getPostsFollowingMentors(
    @Header('Authorization') String userToken,
  );
  // Get post details
  @GET(ApiConstants.getPostDetails)
  Future<PostResponseModel> getPostDetails(
    @Header('Authorization') String userToken,
    @Path('postId') String postId,
  );
}
