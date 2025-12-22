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
    };
  }

  factory AppointmentModel.fromJson(Map<String, dynamic> json) {
    return AppointmentModel(
      id: json["id"],
      createdAt: json["created_at"],
      date: json["date"],
      time: json["time"],
      patientId: json["patient_id"],
      doctorId: json["doctor_id"],
      userId: json["user_id"],
      consultationType: json["consultation_type"],
      consultationFee: json["consultation_fee"],
    );
  }

  @override
  String toString() {
    return 'AppointmentModel{id: $id, createdAt: $createdAt, date: $date, time: $time, patientId: $patientId, doctorId: $doctorId, userId: $userId, consultationType: $consultationType, consultationFee: $consultationFee}';
  }
}
