import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
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
          child: FutureBuilder(
            future: plantDetailRepository.fetchPlantDetail(widget.id),
            builder: ((context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    width: 500,
                    height: 1000,
                    child: Center(
                      child: Text(
                        "PlantET",
                        style: GoogleFonts.amaranth(
                          // fontSize: currentWidth < 370 ? 46.6 : 52.6,
                          fontSize: 52.6,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 39, 37, 37),
                        ),
                      ),
                    ),
                  ),
                ); // Tampilkan loading spinner saat proses fetch data masih berjalan
              }
              if (snapshot.hasError) {
                return Text("Error: ${snapshot.error}");
              }
              if (!snapshot.hasData) {
                return Text("Error: Ther is no data");
              }
              return ListView(
                children: [
                  Container(
                    height: 280,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(38.0)),
                      image: DecorationImage(
                          image: CachedNetworkImageProvider(
                              plantDetail!.default_image),
                          fit: BoxFit.cover),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 62.7,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 62.7,
                                width: 62.6,
                                padding: EdgeInsets.all(18),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9.6),
                                  color: Color(0x080a0928),
                                ),
                                child: SvgPicture.asset(
                                    'assets/svg/icon_drawer.svg'),
                              ),
                              GestureDetector(
                                onTap: () {
                                  // Navigator.of(context).push(MaterialPageRoute(
                                  //     builder: (context) => SearchScreen()));
                                },
                                child: Container(
                                  height: 62.7,
                                  width: 62.6,
                                  padding: EdgeInsets.all(18),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9.6),
                                    color: Color(0x080a0928),
                                  ),
                                  child: SvgPicture.asset(
                                      'assets/svg/icon_user.svg'),
                                ),
                              )
                            ],
                          ),
                        ),

                        //Text app name and description

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 38.8, left: 28.8, right: 28.8),
                              child: Text(
                                plantDetail!.common_name.toString(),
                                style: GoogleFonts.amaranth(
                                  // fontSize: currentWidth < 370 ? 46.6 : 52.6,
                                  fontSize: 32.6,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 6.8, left: 28.8, right: 28.8),
                              child: Text(
                                plantDetail!.scientific_name[0],
                                style: GoogleFonts.roboto(
                                    fontSize: 16.2,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Text(plantDetail != null
                      ? plantDetail!.default_image
                      : "Waiting..."),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
