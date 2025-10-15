import 'package:flutter/material.dart';
import 'package:act001/src/features/profile/presentation/widgets/stat_item.dart';

class StatsRow extends StatelessWidget {
  const StatsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: <Widget>[
        Expanded(
          child: StatItem(
            label: 'Publicaciones',
            value: '536',
            icon: Icons.public,
          ),
        ),
        Expanded(
          child: StatItem(
            label: 'Seguidores',
            value: '5790',
            icon: Icons.follow_the_signs,
          ),
        ),
        Expanded(
          child: StatItem(
            label: 'Seguidos',
            value: '10',
            icon: Icons.person_add,
          ),
        ),
      ],
    );
  }
}
