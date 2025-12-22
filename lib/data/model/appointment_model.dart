import 'package:medigo/data/model/doctor_model.dart';
import 'package:medigo/data/model/speciality_model.dart';

class AppointmentModel {
  int? id;
  String? createdAt;
  String? date;
  String? time;
  int? patientId;
  int? doctorId;
  String? userId;
  String? consultationType;
  String? consultationFee;
  String? status;
  DoctorModel? doctor;
  SpecialityModel? specialityModel;

  AppointmentModel({
    this.id,
    this.createdAt,
    this.date,
    this.time,
    this.patientId,
    this.doctorId,
    this.userId,
    this.consultationType,
    this.consultationFee,
    this.status,
    this.doctor,
    this.specialityModel,
  });

  Map<String, dynamic> toJson() {
    return {
      "date": date,
      "time": time,
      "patient_id": patientId,
      "doctor_id": doctorId,
      "user_id": userId,
      "consultation_type": consultationType,
      "consultation_fee": consultationFee,
      "status": status,
    };
  }

  factory AppointmentModel.fromJson(Map<String, dynamic> json) {
    return AppointmentModel(
      id: json["id"],
      createdAt: json["created_at"],
      date: json["date"],
      time: json["time"],
      patientId: json["patient_id"],
      // doctorId: json["doctor_id"],
      userId: json["user_id"],
      consultationType: json["consultation_type"],
      consultationFee: json["consultation_fee"],
      status: json["status"],
      doctor: json['doctor'] != null
          ? DoctorModel.fromJson(json['doctor'])
          : null,
      specialityModel:
          json['spec'] != null && json['spec'] is Map<String, dynamic>
          ? SpecialityModel.fromJson(json['spec'])
          : (json['speciality'] != null &&
                    json['speciality'] is Map<String, dynamic>
                ? SpecialityModel.fromJson(json['speciality'])
                : null),
    );
  }

  @override
  String toString() {
    return 'AppointmentModel{id: $id, createdAt: $createdAt, date: $date, time: $time, patientId: $patientId, doctorId: $doctorId, userId: $userId, consultationType: $consultationType, consultationFee: $consultationFee, status: $status, doctor: $doctor, specialityModel: $specialityModel}';
  }
}
