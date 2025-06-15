import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/core/networking/api_result.dart';
import 'package:mentorea_mobile_app/shared/community/data/model/post/create_post_request_body.dart';
import 'package:mentorea_mobile_app/shared/community/data/model/post/post_response_model.dart';
import 'package:mentorea_mobile_app/shared/community/data/model/post/posts_list_response_model.dart';
import 'package:mentorea_mobile_app/shared/community/data/repository/community_post_repository.dart';
import 'package:mentorea_mobile_app/shared/community/presentation/logic/post/community_post_state.dart';

class CommunityPostCubit extends Cubit<CommunityPostState> {
  final CommunityPostRepository communityPostRepository;
  CommunityPostCubit(this.communityPostRepository)
      : super(const CommunityPostState.initial()) {
    getAllPosts();
  }

  static CommunityPostCubit get(context) =>
      BlocProvider.of<CommunityPostCubit>(context);

  TextEditingController contentController = TextEditingController();
  GlobalKey<FormState> createPostFormKey = GlobalKey<FormState>();
  GlobalKey<FormState> updatePostFormKey = GlobalKey<FormState>();

  PostResponseModel? postResponseModel;
  List<PostResponseModel> postsListResponseModel = [];
  List<PostResponseModel> postsFollowingMentorsListResponseModel = [];

  // Get All Posts
  Future<void> getAllPosts() async {
    emit(const CommunityPostState.getAllPostsLoading());
    final response = await communityPostRepository.getAllPosts();

    if (response is Success<PostsListResponseModel>) {
      postsListResponseModel = response.data.items!;
      emit(const CommunityPostState.getAllPostsSuccess());
    } else if (response is Failure<PostsListResponseModel>) {
      emit(CommunityPostState.getPostsFailure(response.error));
    }
  }

  // Get Post Details
  Future<void> getPostDetails(String postId) async {
    emit(const CommunityPostState.getPostDetailsLoading());
    final response = await communityPostRepository.getPostDetails(postId);

    if (response is Success<PostResponseModel>) {
      postResponseModel = response.data;
      emit(const CommunityPostState.getPostDetailsSuccess());
    } else if (response is Failure<PostResponseModel>) {
      emit(CommunityPostState.getPostDetailsFailure(response.error));
    }
  }

  // Create Post
  Future<void> createPost() async {
    emit(const CommunityPostState.createPostLoading());
    final response = await communityPostRepository
        .createPost(CreatePostRequestBody(content: contentController.text));

    if (response is Success<PostResponseModel>) {
      postResponseModel = response.data;
      contentController.clear();
      getAllPosts();
      emit(const CommunityPostState.createPostSuccess());
    } else if (response is Failure<PostResponseModel>) {
      emit(CommunityPostState.createPostFailure(response.error));
    }
  }

  // Update Post
  Future<void> updatePost(String postId) async {
    emit(const CommunityPostState.updatePostLoading());
    final response = await communityPostRepository.updatePost(
        CreatePostRequestBody(content: contentController.text), postId);

    if (response is Success<void>) {
      emit(const CommunityPostState.updatePostSuccess());
    } else if (response is Failure<void>) {
      emit(CommunityPostState.updatePostFailure(response.error));
    }
  }

  // Delete Post
  Future<void> deletePost(String postId) async {
    emit(const CommunityPostState.deletePostLoading());
    final response = await communityPostRepository.deletePost(postId);

    if (response is Success<void>) {
      emit(const CommunityPostState.deletePostSuccess());
    } else if (response is Failure<void>) {
      emit(CommunityPostState.deletePostFailure(response.error));
    }
  }

  // Get posts by followed mentors
  Future<void> getPostsFollowingMentors() async {
    emit(const CommunityPostState.getPostsFollowingMentorsLoading());
    final response = await communityPostRepository.getPostsFollowingMentors();

    if (response is Success<PostsListResponseModel>) {
      postsFollowingMentorsListResponseModel = response.data.items!;
      emit(const CommunityPostState.getPostsFollowingMentorsSuccess());
    } else if (response is Failure<PostsListResponseModel>) {
      emit(CommunityPostState.getPostsFollowingMentorsFailure(response.error));
    }
  }
}
