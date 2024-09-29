import 'package:flutter/material.dart';
import 'package:hackyeah_2024_mobile/theme/theme.dart';

class SideBarItem extends StatelessWidget {
  const SideBarItem(
      {super.key,
      required this.isActive,
      required this.icon,
      required this.name,
      required this.onTap});
  final bool isActive;
  final IconData icon;
  final String name;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Icon(icon,
              color: isActive
                  ? AppTheme.colors.primary.shade500
                  : AppTheme.colors.textPrimary),
          const SizedBox(
            width: 16,
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 16,
                color: isActive
                    ? AppTheme.colors.primary.shade500
                    : AppTheme.colors.textPrimary),
          )
        ],
      ),
    );
  }
}
