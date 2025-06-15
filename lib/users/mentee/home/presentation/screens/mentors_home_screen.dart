import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentorea_mobile_app/core/widgets/appbar_icon.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/data/models/mentor_response_model.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/screens/mentor_profile_screen.dart';
import 'package:mentorea_mobile_app/users/mentee/explore/presentation/widgets/mentor_card_list_view_item.dart';

class MentorsHomeScreen extends StatelessWidget {
  const MentorsHomeScreen(
      {super.key, required this.mentors, required this.title});

  final List<MentorResponseModel> mentors;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppbarIcon(),
        title: Text(title),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: mentors.length,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(bottom: 16.h),
            child: FadeInRight(
              delay: const Duration(milliseconds: 100),
              curve: Curves.linear,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (builder) =>
                          MentorProfileScreen(mentor: mentors[index]),
                    ),
                  );
                },
                child: MentorCardListViewItem(
                  mentor: mentors[index],
                ),
              ),
            ),
          ),
        ),
      )),
    );
  }
}
