import 'package:flutter/material.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Image.asset(
            'assets/images/daif.png',
            fit: BoxFit.fill,
            height: 200,
          ),
        ),
      ],
    );
  }
}
