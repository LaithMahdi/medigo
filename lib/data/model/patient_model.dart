class PatientModel {
  int? id;
  String? fullName;
  String? email;
  int? phoneNumber;
  String? gender;
  int? age;
  String? detail;
  String? createdAt;

  PatientModel({
    this.id,
    this.fullName,
    this.email,
    this.phoneNumber,
    this.gender,
    this.age,
    this.detail,
    this.createdAt,
  });

  factory PatientModel.fromJson(Map<String, dynamic> json) {
    return PatientModel(
      id: json['id'] as int?,
      fullName: json['full_name'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phone_number'] as int?,
      gender: json['gender'] as String?,
      age: json['age'] as int?,
      detail: json['detail'] as String?,
      createdAt: json['created_at'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'full_name': fullName,
      'email': email,
      'phone_number': phoneNumber,
      'gender': gender,
      'age': age,
      'detail': detail,
    };
  }

  @override
  String toString() {
    return 'PatientModel{id: $id, fullName: $fullName, email: $email, phoneNumber: $phoneNumber, gender : $gender, age: $age, detail: $detail, createdAt: $createdAt}';
  }
}
