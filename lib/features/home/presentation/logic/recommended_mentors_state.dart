abstract class RecommendedMentorsState {}

final class RecommendedMentorsInitialState extends RecommendedMentorsState {}

final class RecommendedMentorsLoadingState extends RecommendedMentorsState {}

final class RecommendedMentorsSuccessState extends RecommendedMentorsState {}

final class RecommendedMentorsErrorState extends RecommendedMentorsState {
  final String error;

  RecommendedMentorsErrorState({required this.error});
}

final class TopRatedMentorsLoadingState extends RecommendedMentorsState {}

final class TopRatedMentorsSuccessState extends RecommendedMentorsState {}

final class TopRatedMentorsErrorState extends RecommendedMentorsState {
  final String error;

  TopRatedMentorsErrorState({required this.error});
}
