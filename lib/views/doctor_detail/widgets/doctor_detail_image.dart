import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/doctor_detail_controller.dart';
import '../../../core/config.dart';

class DoctorDetailImage extends GetView<DoctorDetailController> {
  const DoctorDetailImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Config.spacing15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.network(
          controller.doctor.image,
          width: double.infinity,
          height: 300,
          fit: BoxFit.cover,
          alignment: AlignmentGeometry.topCenter,
          errorBuilder: (context, error, stackTrace) => Placeholder(),
          loadingBuilder: (context, child, loadingProgress) =>
              loadingProgress == null
              ? child
              : Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                        : null,
                  ),
                ),
        ),
      ),
    );
  }
}
