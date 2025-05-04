import 'package:freezed_annotation/freezed_annotation.dart';

part 'community_connections_state.freezed.dart';

@freezed
class CommunityConnectionsState with _$CommunityConnectionsState {
  const factory CommunityConnectionsState.initial() = _Initial;
}
