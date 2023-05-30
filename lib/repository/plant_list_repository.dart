import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:plant_app/models/plant_list_model.dart';

class PlantListRepository {
  final String apiKey = "sk-gkki647221314f05c1066";
  List<PlantListModel> ediblePlantList = [];

  fetchData() async {
    var url = Uri.parse(
        "https://perenual.com/api/species-list?key=sk-gkki647221314f05c1066&edible=1");
    var response = await http.get(url);

    if (response.statusCode == 200) {
      // Request was successful
      var responseBody = response.body;
      var data = json.decode(response.body);
      // Process the response data as needed

      for (var item in data) {
        PlantListModel plantListModel = PlantListModel.fromJson(item);
        ediblePlantList.add(plantListModel);
      }

      return ediblePlantList;
    } else {
      // Request failed
      print('Request failed with status: ${response.statusCode}');
    }
  }
}
