import 'package:flutter/material.dart';
import '../../../core/constant/app_color.dart';
import '../../../data/model/doctor_model.dart';

class HomeAvailableDoctorCard extends StatelessWidget {
  const HomeAvailableDoctorCard({
    super.key,
    required this.doctor,
    required this.onTap,
  });

  final DoctorModel doctor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  doctor.image,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => Placeholder(),
                ),
              ),
            ),
            Positioned(
              bottom: 0,

              right: 0,
              left: 0,
              child: Container(
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 13, vertical: 5),
                decoration: BoxDecoration(
                  color: AppColor.black.withValues(alpha: .4),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Column(
                  spacing: 4,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctor.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: AppColor.white,
                      ),
                    ),
                    Text(
                      "${doctor.speciality?.title}",
                      style: TextStyle(fontSize: 12, color: AppColor.secondary),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
