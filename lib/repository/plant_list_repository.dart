import 'dart:convert';
import 'package:sqflite/sqflite.dart';
import 'package:http/http.dart' as http;
import 'package:plant_app/models/plant_list_model.dart';

class PlantListRepository {
  final String apiKey = "sk-gkki647221314f05c1066";

  List<PlantListModel> ediblePlantList = [];
  List<PlantListModel> poisonusPlantList = [];
  List<PlantListModel> indoorPlantList = [];

  fetchEdibleData() async {
    var url = Uri.parse(
        "https://perenual.com/api/species-list?key=sk-gkki647221314f05c1066&edible=1");
    var response = await http.get(url);

    if (response.statusCode == 200) {
      // Request was successful
      var data = json.decode(response.body);
      // Process the response data as needed

      for (var item in data["data"]) {
        PlantListModel plantListModel = PlantListModel.fromJson(item);

        if (ediblePlantList.length < 30) {
          ediblePlantList.add(plantListModel);
        }
      }

      return ediblePlantList;
    } else {
      // Request failed
      print('Request failed with status: ${response.statusCode}');
    }
  }

  fetchPoisonusData() async {
    var url = Uri.parse(
        "https://perenual.com/api/species-list?key=sk-gkki647221314f05c1066&poisonus=1");
    var response = await http.get(url);

    if (response.statusCode == 200) {
      // Request was successful
      var data = json.decode(response.body);
      // Process the response data as needed

      for (var item in data["data"]) {
        PlantListModel plantListModel = PlantListModel.fromJson(item);

        if (poisonusPlantList.length < 30) {
          poisonusPlantList.add(plantListModel);
        }
      }

      return poisonusPlantList;
    } else {
      // Request failed
      print('Request failed with status: ${response.statusCode}');
    }
  }

  fetchIndoorData() async {
    var url = Uri.parse(
        "https://perenual.com/api/species-list?key=sk-gkki647221314f05c1066&indoor=1");
    var response = await http.get(url);

    if (response.statusCode == 200) {
      // Request was successful
      var data = json.decode(response.body);
      // Process the response data as needed

      for (var item in data["data"]) {
        PlantListModel plantListModel = PlantListModel.fromJson(item);

        if (indoorPlantList.length < 30) {
          indoorPlantList.add(plantListModel);
        }
      }

      return indoorPlantList;
    } else {
      // Request failed
      print('Request failed with status: ${response.statusCode}');
    }
  }
}
