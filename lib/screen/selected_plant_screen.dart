import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:plant_app/models/plant_detail_model.dart';
import 'package:plant_app/repository/plant_detail_repository.dart';

class SelectedPlantScreen extends StatefulWidget {
  int id;

  SelectedPlantScreen({required this.id});

  @override
  State<SelectedPlantScreen> createState() => _SelectedPlantScreenState();
}

class _SelectedPlantScreenState extends State<SelectedPlantScreen> {
  PlantDetailRepository plantDetailRepository = PlantDetailRepository();

  PlantDetailModel? plantDetail; // Declare a nullable PlantDetail object

  @override
  void initState() {
    super.initState();
    fetchPlantDetailData(); // Call the method to fetch the plant detail data
  }

  // Method to fetch plant detail data
  void fetchPlantDetailData() async {
    try {
      PlantDetailModel result =
          await plantDetailRepository.fetchPlantDetail(widget.id);
      setState(() {
        plantDetail =
            result; // Set the fetched plant detail data to the plantDetail variable
      });
    } catch (e) {
      print('Error fetching plant detail: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            decoration: const BoxDecoration(color: Colors.white),
            child: ListView(
              children: [
                Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      color: Color.fromRGBO(160, 196, 157, 100)),
                ),
                Text(plantDetail != null
                    ? plantDetail!.default_image
                    : "Waiting..."),
                Image(
                    image:
                        CachedNetworkImageProvider(plantDetail!.default_image))
              ],
            )),
      ),
    );
  }
}
