import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:plant_app/models/plant_detail_model.dart';

class PlantDetailRepository {
  final String apiKey = "sk-gkki647221314f05c1066";

  Future<PlantDetailModel> fetchPlantDetail(id) async {
    final String apiUrl =
        'https://perenual.com/api/species/details/${id}?key=sk-gkki647221314f05c1066';

    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final plantDetail = PlantDetailModel.fromJson(data);

      return plantDetail;
    } else {
      throw Exception('Failed to fetch plant detail');
    }
  }
}
