import 'package:flutter/material.dart';
import '../core/constant/app_color.dart';

class CustomExpansionTile extends StatelessWidget {
  const CustomExpansionTile({
    super.key,
    required this.title,
    required this.children,
    required this.initiallyExpanded,
    this.onExpansionChanged,
  });

  final String title;
  final List<Widget> children;
  final bool initiallyExpanded;
  final void Function(bool value)? onExpansionChanged;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: AppColor.grey1,
        ),
      ),
      backgroundColor: AppColor.white,
      collapsedShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7),
        side: BorderSide(color: AppColor.grey2),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7),
        side: BorderSide(color: AppColor.grey2),
      ),
      expandedAlignment: Alignment.centerLeft,
      iconColor: AppColor.grey1,
      tilePadding: EdgeInsets.symmetric(horizontal: 15),
      initiallyExpanded: initiallyExpanded,
      onExpansionChanged: onExpansionChanged,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 15),
          child: Column(children: children),
        ),
      ],
    );
  }
}
