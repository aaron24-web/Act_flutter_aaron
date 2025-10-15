import 'package:flutter/material.dart';
import 'package:act001/src/core/theme/app_theme.dart';

class UserInfoSection extends StatelessWidget {
  const UserInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Jane Doe',
          style: AppTheme.nameTextStyle,
        ),
        AppTheme.verticalSpaceSmall,
        const Text(
          '@janedoe',
          style: AppTheme.usernameTextStyle,
        ),
      ],
    );
  }
}
