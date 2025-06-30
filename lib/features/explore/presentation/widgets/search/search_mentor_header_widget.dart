import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:mentorea_mobile_app/core/helper/utils/spacing.dart';
import 'package:mentorea_mobile_app/core/widgets/app_text_form_field.dart';
import 'package:mentorea_mobile_app/core/widgets/container_card_widget.dart';
import 'package:mentorea_mobile_app/generated/l10n.dart';
import 'package:mentorea_mobile_app/features/explore/presentation/logic/explore_mentor_cubit.dart';

class SearchMentorHeaderWidget extends StatelessWidget {
  const SearchMentorHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    GlobalKey<FormState> searchFormKey = GlobalKey();
    return Form(
      key: searchFormKey,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: AppTextFormField(
              prefixIcon: const Icon(IconlyLight.search, size: 24),
              hintText: S.current.searchForYourMentor,
              controller: searchController,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Search value is required';
                }
              },
            ),
          ),
          horizontalSpace(8),
          GestureDetector(
            onTap: () {
              if (searchFormKey.currentState!.validate()) {
                ExploreMentorCubit.get(context)
                    .searchMentor(searchValue: searchController.text);
              }
            },
            child: ContainerCardWidget(
              width: 110,
              color: Theme.of(context).appBarTheme.backgroundColor,
              child: Text(
                'Search',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .appBarTheme
                    .titleTextStyle!
                    .copyWith(fontSize: 20.sp),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
