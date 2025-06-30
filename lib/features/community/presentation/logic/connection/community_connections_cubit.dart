import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentorea_mobile_app/features/community/data/repository/community_connections_repository.dart';
import 'package:mentorea_mobile_app/features/community/presentation/logic/connection/community_connections_state.dart';

class CommunityConnectionsCubit extends Cubit<CommunityConnectionsState> {
  final CommunityConnectionsRepository communityConnectionsRepository;
  CommunityConnectionsCubit(this.communityConnectionsRepository)
      : super(const CommunityConnectionsState.initial());
}
