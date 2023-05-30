class PlantListModel {
  final int id;
  final String common_name;
  final List scientific_name;
  final String default_image;
  final String original_url;

  const PlantListModel(
      {required this.id,
      required this.common_name,
      required this.scientific_name,
      required this.default_image,
      required this.original_url});

  factory PlantListModel.fromJson(Map<String, dynamic> json) {
    return PlantListModel(
        id: json["id"],
        common_name: json["common_name"],
        scientific_name: json["scientific_name"],
        default_image: json["default_image"]["thumbnail"],
        original_url: json["default_image"]["original_url"]);
  }
}
