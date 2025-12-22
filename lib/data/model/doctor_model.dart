import 'package:medigo/data/model/speciality_model.dart';

class DoctorModel {
  int id;
  String name;
  String image;
  String description;
  String gender;
  int? specialityId;
  double price;
  int experienceNumber;
  int ratingNumber;
  int patientNumber;
  String? createdAt;
  String? availability;
  SpecialityModel? speciality;

  DoctorModel({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.gender,
    this.specialityId,
    required this.price,
    required this.experienceNumber,
    required this.ratingNumber,
    required this.patientNumber,
    this.createdAt,
    this.availability,
    this.speciality,
  });

  factory DoctorModel.fromJson(Map<String, dynamic> json) {
    return DoctorModel(
      id: json['id'],
      name: json['full_name'],
      image: json['image'],
      description: json['description'],
      gender: json['gender'],
      price: (json['price'] as num).toDouble(),
      experienceNumber: json['experience_number'],
      ratingNumber: json['rating_number'],
      patientNumber: json['patient_number'],
      createdAt: json['created_at'],
      availability: json['availability'],
      speciality: json['speciality'] != null
          ? SpecialityModel.fromJson(json['speciality'])
          : null,
    );
  }

  @override
  String toString() {
    return 'DoctorModel{id: $id, name: $name, image: $image, description: $description, gender: $gender, specialityId: $specialityId, price: $price, experienceNumber: $experienceNumber, ratingNumber: $ratingNumber, patientNumber: $patientNumber, createdAt: $createdAt, availability: $availability}';
  }
}
