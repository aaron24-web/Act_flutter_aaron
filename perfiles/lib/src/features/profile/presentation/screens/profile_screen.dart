import 'package:act001/src/core/theme/app_theme.dart';
import 'package:act001/src/features/profile/presentation/widgets/profile_avatar.dart';
import 'package:act001/src/features/profile/presentation/widgets/stats_row.dart';
import 'package:act001/src/features/profile/presentation/widgets/user_info_section.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppTheme.spacingLarge),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: Container(
              padding: const EdgeInsets.all(AppTheme.spacingLarge),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    AppTheme.cardStartColor,
                    AppTheme.cardEndColor,
                  ],
                ),
                borderRadius: AppTheme.cardBorderRadius,
                boxShadow: [AppTheme.cardShadow],
              ),
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ProfileAvatar(),
                  AppTheme.verticalSpaceLarge,
                  UserInfoSection(),
                  AppTheme.verticalSpaceXLarge,
                  StatsRow(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
