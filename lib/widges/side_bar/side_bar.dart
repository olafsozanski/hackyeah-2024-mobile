import 'package:flutter/material.dart';
import 'package:hackyeah_2024_mobile/theme/theme.dart';
import 'package:hackyeah_2024_mobile/widges/side_bar/side_bar_item.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(right: BorderSide(color: Colors.grey.shade300)),
          color: Colors.white),
      padding: AppTheme.spacing.screenPadding,
      width: 360,
      child: ListView(
        children: [
          SideBarItem(
              isActive: true,
              icon: Icons.shield,
              name: "Sprawdź kontrahenta",
              onTap: () {}),
          const SizedBox(
            height: 16,
          ),
          SideBarItem(
              isActive: false,
              icon: Icons.comment_bank,
              name: "Oceń firmę",
              onTap: () {}),
          const SizedBox(
            height: 16,
          ),
          Container(
            decoration:
                BoxDecoration(border: Border.all(color: Colors.grey.shade300)),
          ),
          const SizedBox(
            height: 16,
          ),
          SideBarItem(
              isActive: false,
              icon: Icons.abc,
              name: "Moja ocena",
              onTap: () {}),
          const SizedBox(
            height: 16,
          ),
          SideBarItem(
              isActive: false,
              icon: Icons.groups_3,
              name: "Moi kontrahenci",
              onTap: () {}),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
