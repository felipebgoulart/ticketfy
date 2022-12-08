import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';

import '../home_store.dart';

class TicketfyNavItem extends StatelessWidget {
  
  TicketfyNavItem({
    super.key,
    required this.index,
    required this.enabled,
    required this.svgPath
  });

  final int index;
  final bool enabled;
  final String svgPath;

  final HomeStore _store = Modular.get<HomeStore>();

  @override
  Widget build(BuildContext context) {
    
    ThemeData theme = Theme.of(context);

    return InkWell(
      highlightColor: Colors.transparent,
      borderRadius: BorderRadius.circular(12),
      splashColor: theme.colorScheme.secondary,
      onTap: () => _store.updateCurrentIndex(index),
      child: Ink(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10
        ),
        width: 54,
        height: 62,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: enabled
            ? theme.colorScheme.secondary
            : Colors.transparent
        ),
        child: SvgPicture.asset(
          svgPath,
          width: 36,
        )
      ),
    );
  }
}