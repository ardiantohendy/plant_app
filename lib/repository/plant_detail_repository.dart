import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:plant_app/models/plant_detail_model.dart';

class PlantDetailRepository {
  final String apiKey = "sk-gkki647221314f05c1066";

  fetchPlantDetail(id) async {
    var url = Uri.parse(
        "https://perenual.com/api/species/details/${id}?key=sk-gkki647221314f05c1066");
    var response = await http.get(url);

    if (response.statusCode == 200) {
      // Request was successful
      var data = json.decode(response.body);
      // Process the response data as needed

      PlantDetailModel plantDetailModel = PlantDetailModel.fromJson(data);
      return plantDetailModel;
    } else {
      // Request failed
      print('Request failed with status: ${response.statusCode}');
    }
  }
}
