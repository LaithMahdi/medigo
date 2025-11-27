import 'package:flutter/material.dart';
import 'package:medigo/core/constant/app_color.dart';
import 'package:medigo/data/dummy.dart';
import 'package:medigo/shared/buttons/custom_outline_button.dart';
import 'package:medigo/shared/spacer.dart';

class SpecialityModalBottomSheet extends StatelessWidget {
  const SpecialityModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 24),
      height: MediaQuery.of(context).size.height * 0.5,
      child: Column(
        children: [
          Text(
            "Sort by",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColor.black,
            ),
          ),
          VerticalSpacer(10),
          Divider(color: AppColor.grey2),
          Spacer(),
          Column(
            children: List.generate(sortByFilters.length, (index) {
              final option = sortByFilters[index];
              return ListTile(
                leading: Checkbox(value: true, onChanged: (value) {}),
                contentPadding: EdgeInsets.zero,
                horizontalTitleGap: 0,
                minTileHeight: 50,
                title: Text(
                  option.name,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: AppColor.grey1,
                  ),
                ),
              );
            }),
          ),
          Spacer(),
          Row(
            spacing: 16,
            children: [
              Expanded(
                child: CustomOutlineButton(text: "Clear", onPressed: () {}),
              ),
              Expanded(
                child: ElevatedButton(child: Text("Filter"), onPressed: () {}),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
