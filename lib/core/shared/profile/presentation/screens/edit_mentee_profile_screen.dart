import 'package:flutter/material.dart';
import 'package:mentorea_mobile_app/core/widgets/appbar_icon.dart';

class EditMenteeProfileScreen extends StatelessWidget {
  const EditMenteeProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Mentee Profile'),
        leading: const AppbarIcon(),
      ),
      body: const Center(
        child: Text('Edit Mentee Profile Screen'),
      ),
    );
  }
}
