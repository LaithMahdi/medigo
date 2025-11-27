import 'package:flutter/material.dart';
import '../../../shared/buttons/custom_outline_button.dart';

class SpecialityModalSheetBottomButtons extends StatelessWidget {
  const SpecialityModalSheetBottomButtons({
    super.key,
    this.titleFilter = "Apply",
    this.titleClear = "Clear",
    required this.onPressedFilter,
    required this.onPressedClear,
  });

  final String titleFilter;
  final String titleClear;
  final VoidCallback onPressedFilter;
  final VoidCallback onPressedClear;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      children: [
        Expanded(
          child: CustomOutlineButton(
            text: titleClear,
            onPressed: onPressedClear,
          ),
        ),
        Expanded(
          child: ElevatedButton(
            onPressed: onPressedFilter,
            child: Text(titleFilter),
          ),
        ),
      ],
    );
  }
}
