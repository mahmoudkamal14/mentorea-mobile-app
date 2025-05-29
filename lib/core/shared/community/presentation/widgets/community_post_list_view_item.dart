import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/shared/community/data/model/post/post_response_model.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/screens/post_details_screen.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/widgets/post_body_widget.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/widgets/post_footer_widget.dart';
import 'package:mentorea_mobile_app/core/shared/community/presentation/widgets/post_header_widget.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';

class CommunityPostListViewItem extends StatelessWidget {
  const CommunityPostListViewItem({
    super.key,
    required this.selectedItem,
    required this.postModel,
  });

  final int selectedItem;
  final PostResponseModel postModel;

  @override
  Widget build(BuildContext context) {
    return ContainerCardWidget(
      child: Column(
        children: [
          PostHeaderWidget(postModel: postModel),
          verticalSpace(16),
          GestureDetector(
              onTap: () {
                _navigateToPostDetailsScreen(
                  context: context,
                  post: postModel,
                );
              },
              child: PostBodyWidget(postModel: postModel)),
          const Divider(color: Color(0xFF103A69)),
          PostFooterWidget(postId: postModel.id!),
        ],
      ),
    );
  }

  void _navigateToPostDetailsScreen({
    required BuildContext context,
    required PostResponseModel post,
  }) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            PostDetailsScreen(postModel: postModel),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var tween = Tween(
            begin: const Offset(1.0, 0.0),
            end: Offset.zero,
          ).chain(CurveTween(curve: Curves.easeInOut));
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(position: offsetAnimation, child: child);
        },
      ),
    );
  }
}
