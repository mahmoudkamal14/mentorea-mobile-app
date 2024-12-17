import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Color(0xFF103A69),
      height: 1,
      indent: 4,
      endIndent: 4,
    );
  }
}
