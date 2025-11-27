class SpecialityModel {
  String id;
  String title;
  String image;

  SpecialityModel({required this.id, required this.title, required this.image});

  @override
  String toString() {
    return 'SpecialityModel{id: $id, title: $title, image: $image}';
  }
}
