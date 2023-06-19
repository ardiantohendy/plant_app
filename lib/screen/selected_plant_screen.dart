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

  @override
  Widget build(BuildContext context) {
    // PlantDetailModel plantDetailModel =
    //     plantDetailRepository.fetchPlantDetail(widget.id);

    return Scaffold(
      body: SafeArea(
          child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Text(widget.id.toString()),
      )),
    );
  }
}
