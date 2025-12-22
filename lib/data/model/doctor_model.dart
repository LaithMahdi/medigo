class DoctorModel {
  int id;
  String name;
  String image;
  String description;
  String gender;
  int specialityId;
  double price;
  int experienceNumber;
  int ratingNumber;
  int patientNumber;
  String? createdAt;
  String? availability;

  DoctorModel({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.gender,
    required this.specialityId,
    required this.price,
    required this.experienceNumber,
    required this.ratingNumber,
    required this.patientNumber,
    this.createdAt,
    this.availability,
  });

  factory DoctorModel.fromJson(Map<String, dynamic> json) {
    return DoctorModel(
      id: json['id'],
      name: json['full_name'],
      image: json['image'],
      description: json['description'],
      gender: json['gender'],
      specialityId: json['speciality'],
      price: (json['price'] as num).toDouble(),
      experienceNumber: json['experience_number'],
      ratingNumber: json['rating_number'],
      patientNumber: json['patient_number'],
      createdAt: json['created_at'],
      availability: json['availability'],
    );
  }

  @override
  String toString() {
    return 'DoctorModel{id: $id, name: $name, image: $image, description: $description, gender: $gender, specialityId: $specialityId, price: $price, experienceNumber: $experienceNumber, ratingNumber: $ratingNumber, patientNumber: $patientNumber, createdAt: $createdAt, availability: $availability}';
  }
}
