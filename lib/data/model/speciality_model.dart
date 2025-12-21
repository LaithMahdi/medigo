class SpecialityModel {
  int id;
  String title;
  String image;
  String? createdAt;
  bool? isActive;

  SpecialityModel({
    required this.id,
    required this.title,
    required this.image,
    this.createdAt,
    this.isActive,
  });

  factory SpecialityModel.fromJson(Map<String, dynamic> json) {
    return SpecialityModel(
      id: json['id'],
      image: json['icon'],
      title: json['name'],
      createdAt: json['created_at'],
      isActive: json['is_active'],
    );
  }

  @override
  String toString() {
    return 'SpecialityModel{id: $id, title: $title, image: $image, createdAt: $createdAt, isActive: $isActive}';
  }
}
