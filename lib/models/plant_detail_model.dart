class PlantDetailModel {
  final int id;
  final String common_name;
  final List scientific_name;
  final List other_name;
  final String family;
  final List origin;
  final String type;
  final String dimension;
  final String cycle;
  final List attracts;
  final List propagation;
  final String watering;
  final List sunlight;
  final List soil;
  final String growth_rate;
  final bool salt_tolerant;
  final bool invasive;
  final bool tropical;
  final bool indoor;
  final String care_level;
  final bool flowers;
  final bool cones;
  final bool fruits;
  final bool edible_fruit;
  final List fruit_color;
  final bool leaf;
  final List leaf_color;
  final bool edible_leaf;
  final String description;
  final String default_image;
  final String original_url;

  const PlantDetailModel(
      {required this.id,
      required this.common_name,
      required this.scientific_name,
      required this.other_name,
      required this.family,
      required this.origin,
      required this.type,
      required this.dimension,
      required this.cycle,
      required this.attracts,
      required this.propagation,
      required this.watering,
      required this.sunlight,
      required this.soil,
      required this.growth_rate,
      required this.salt_tolerant,
      required this.invasive,
      required this.tropical,
      required this.indoor,
      required this.care_level,
      required this.flowers,
      required this.cones,
      required this.fruits,
      required this.edible_fruit,
      required this.fruit_color,
      required this.leaf,
      required this.leaf_color,
      required this.edible_leaf,
      required this.description,
      required this.default_image,
      required this.original_url});

  factory PlantDetailModel.fromJson(Map<String, dynamic> json) {
    return PlantDetailModel(
        id: json["id"],
        common_name: json["common_name"],
        scientific_name: json["scientific_name"],
        other_name: json["other_name"],
        family: json["family"],
        origin: json["origin"],
        type: json["type"],
        dimension: json["dimension"],
        cycle: json["cycle"],
        attracts: json["attracts"],
        propagation: json["propagation"],
        watering: json["watering"],
        sunlight: json["sunlight"],
        soil: json["soil"],
        growth_rate: json["growth_rate"],
        salt_tolerant: json["salt_tolerant"],
        invasive: json["invasive"],
        tropical: json["tropical"],
        indoor: json["indoor"],
        care_level: json["care_level"],
        flowers: json["flowers"],
        cones: json["cones"],
        fruits: json["fruits"],
        edible_fruit: json["edible_fruit"],
        fruit_color: json["fruit_color"],
        leaf: json["leaf"],
        leaf_color: json["leaf_color"],
        edible_leaf: json["edible_leaf"],
        description: json["description"],
        default_image: json["default_image"]["thumbnail"],
        original_url: json["original_url"]);
  }
}
