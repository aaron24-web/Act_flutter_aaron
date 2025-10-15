import 'package:flutter/material.dart';
import 'package:act001/src/core/theme/app_theme.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CircleAvatar(
          radius: AppTheme.avatarRadius,
          backgroundImage: AssetImage('assets/images/profile_pic.jpg'),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: CircleAvatar(
            radius: AppTheme.badgeRadius,
            backgroundColor: AppTheme.verifiedBadgeColor,
            child: const Icon(
              Icons.check,
              color: AppTheme.verifiedIconColor,
              size: AppTheme.badgeIconSize,
            ),
          ),
        ),
      ],
    );
  }
}
