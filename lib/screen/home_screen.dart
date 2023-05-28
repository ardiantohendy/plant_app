import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: ListView(
            children: [
              Container(
                  height: 280,
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(38.0)),
                    image: DecorationImage(
                        image: AssetImage("assets/images/hutan.jpg"),
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
                              "PlantET",
                              style: GoogleFonts.amaranth(
                                // fontSize: currentWidth < 370 ? 46.6 : 52.6,
                                fontSize: 62.6,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 6.8, left: 28.8, right: 28.8),
                            child: Text(
                              "Get free all informations for your plants",
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
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
