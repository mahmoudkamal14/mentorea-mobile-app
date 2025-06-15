import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:mentorea_mobile_app/core/helper/utils/extentions.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/routes/routes.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              context.navigateTo(Routes.mentorsSearchScreen);
            },
            child: ContainerCardWidget(
              child: Row(
                children: [
                  Icon(
                    IconlyLight.search,
                    size: 30,
                    color: Theme.of(context).iconTheme.color!,
                  ),
                  horizontalSpace(10),
                  Text(
                    'Search by name or field',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ),
        ),
        horizontalSpace(10),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 74,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: Theme.of(context).iconTheme.color!,
              ),
            ),
            child: Icon(
              IconlyLight.filter,
              color: Theme.of(context).iconTheme.color!,
            ),
          ),
        ),
      ],
    );
  }
}
