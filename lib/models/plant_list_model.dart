class PlantListModel {
  final int id;
  final String common_name;
  final List scientific_name;
  final List default_image;

  const PlantListModel(
      {required this.id,
      required this.common_name,
      required this.scientific_name,
      required this.default_image});

  factory PlantListModel.fromJson(Map<String, dynamic> json) {
    return PlantListModel(
        id: json["id"],
        common_name: json["common_name"],
        scientific_name: json["scientific_name"],
        default_image: json["default_image"]);
  }
}
