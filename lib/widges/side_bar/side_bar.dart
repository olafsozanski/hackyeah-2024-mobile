import 'package:community_material_icon/community_material_icon.dart';
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
      padding: EdgeInsets.all(24),
      width: 300,
      child: ListView(
        children: [
          SideBarItem(
              isActive: true,
              icon: CommunityMaterialIcons.security,
              name: "Sprawdź kontrahenta",
              onTap: () {}),
          const SizedBox(
            height: 16,
          ),
          SideBarItem(
              isActive: false,
              icon: CommunityMaterialIcons.message_draw,
              name: "Oceń firmę",
              onTap: () {}),
          const SizedBox(
            height: 16,
          ),
          Divider(color: Colors.grey.shade300),
          const SizedBox(
            height: 16,
          ),
          SideBarItem(
              isActive: false,
              icon: CommunityMaterialIcons.star_box_multiple,
              name: "Moja ocena",
              onTap: () {}),
          const SizedBox(
            height: 16,
          ),
          SideBarItem(
              isActive: false,
              icon: CommunityMaterialIcons.account_group,
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
