// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class OutlinedCard extends StatefulWidget {
  const OutlinedCard({super.key, this.clickable = false, required this.child});

  final bool clickable;
  final Widget child;

  @override
  State<OutlinedCard> createState() => _OutlinedCardState();
}

class _OutlinedCardState extends State<OutlinedCard> {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return MouseRegion(
      cursor: widget.clickable
          ? SystemMouseCursors.click
          : SystemMouseCursors.basic,
      child: Container(
        child: widget.child,
        decoration: BoxDecoration(
          border: Border.all(color: colors.outline, width: 1),
        ),
      ),
    );
  }
}
