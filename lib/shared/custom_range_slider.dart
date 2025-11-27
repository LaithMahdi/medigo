import 'package:another_xlider/another_xlider.dart';
import 'package:another_xlider/models/handler.dart';
import 'package:another_xlider/models/handler_animation.dart';
import 'package:another_xlider/models/slider_step.dart';
import 'package:another_xlider/models/tooltip/tooltip.dart';
import 'package:another_xlider/models/tooltip/tooltip_box.dart';
import 'package:another_xlider/models/trackbar.dart';
import 'package:flutter/material.dart';
import '../../../core/constant/app_color.dart';

class CustomRangeSlider extends StatelessWidget {
  const CustomRangeSlider({
    super.key,
    this.max,
    this.min,
    required this.values,
    this.onDragging,
  });

  final double? max;
  final double? min;
  final List<double> values;
  final dynamic Function(
    int handlerIndex,
    dynamic lowerValue,
    dynamic upperValue,
  )?
  onDragging;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth.isFinite
            ? constraints.maxWidth
            : 300;
        return SizedBox(
          width: double.tryParse(width.toString()),
          child: FlutterSlider(
            handlerWidth: 20,
            values: values,
            rangeSlider: true,
            max: max,
            min: min,
            step: FlutterSliderStep(step: 10),
            rightHandler: FlutterSliderHandler(
              foregroundDecoration: BoxDecoration(
                color: AppColor.white,
                shape: BoxShape.circle,
                border: Border.all(color: AppColor.primary, width: 2.5),
              ),
            ),
            handlerAnimation: FlutterSliderHandlerAnimation(),
            tooltip: FlutterSliderTooltip(
              textStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColor.white,
              ),
              boxStyle: FlutterSliderTooltipBox(
                decoration: BoxDecoration(color: AppColor.primary),
              ),
            ),

            handler: FlutterSliderHandler(
              child: SizedBox(),
              decoration: BoxDecoration(
                color: AppColor.white,
                shape: BoxShape.circle,
                border: Border.all(color: AppColor.primary, width: 2.5),
              ),
            ),
            trackBar: FlutterSliderTrackBar(
              activeTrackBar: BoxDecoration(
                color: AppColor.primary,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onDragging: onDragging,
          ),
        );
      },
    );
  }
}
