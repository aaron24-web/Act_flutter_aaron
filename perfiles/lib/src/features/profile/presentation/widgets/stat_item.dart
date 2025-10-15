import 'package:flutter/material.dart';
import 'package:act001/src/core/theme/app_theme.dart';

class StatItem extends StatelessWidget {
  final String label;
  final String value;
  final IconData? icon;

  const StatItem({
    super.key,
    required this.label,
    required this.value,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(icon ?? Icons.error_outline, color: AppTheme.secondaryTextColor),
        AppTheme.verticalSpaceSmall,
        Text(value, style: AppTheme.statValueTextStyle),
        AppTheme.verticalSpaceSmall,
        Text(label, style: AppTheme.statLabelTextStyle),
      ],
    );
  }
}
