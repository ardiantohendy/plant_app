import 'package:plant_app/models/plant_list_model.dart';
import 'package:plant_app/repository/plant_list_repository.dart';

class GetPlantList {
  List<PlantListModel> getEdibleList = [];
  List<PlantListModel> getPoisonusList = [];
  List<PlantListModel> getIndoorList = [];

  PlantListRepository plantListRepository = PlantListRepository();

  getEdiblePlantList() async {
    getEdibleList = await plantListRepository.fetchEdibleData();
    return getEdibleList;
  }

  getPoisonusPlantList() async {
    getPoisonusList = await plantListRepository.fetchPoisonusData();
    return getPoisonusList;
  }

  getIndoorPlantList() async {
    getIndoorList = await plantListRepository.fetchIndoorData();
    return getIndoorList;
  }
}
