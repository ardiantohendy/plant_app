import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
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
                            child:
                                SvgPicture.asset('assets/svg/icon_drawer.svg'),
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
                              child:
                                  SvgPicture.asset('assets/svg/icon_user.svg'),
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
                ),
              ),
              Center(
                child: Container(
                  height: 40,
                  margin: const EdgeInsets.only(top: 28.8),
                  child: DefaultTabController(
                      length: 3,
                      child: TabBar(
                        controller: _tabController,
                        indicatorPadding:
                            const EdgeInsets.only(left: 14.4, right: 14.4),
                        isScrollable: true,
                        labelColor: const Color.fromARGB(255, 38, 36, 36),
                        indicator: MaterialIndicator(
                          color: const Color.fromARGB(255, 38, 36, 36),
                          paintingStyle: PaintingStyle.fill,
                        ),
                        unselectedLabelColor: Color(0xFF8a8a8a),
                        labelStyle: GoogleFonts.roboto(
                            fontSize: 15, fontWeight: FontWeight.w400),
                        unselectedLabelStyle: GoogleFonts.roboto(
                            fontSize: 15, fontWeight: FontWeight.w400),
                        tabs: [
                          Tab(
                            child: Container(
                              child: const Text("Edible"),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: const Text("Poisonus"),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: const Text("Indoor"),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              SizedBox(
                height: 50,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 16.8, left: 28.8, right: 28.8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Edible Plants",
                            style: GoogleFonts.amaranth(
                              fontSize: 32.6,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 38, 36, 36),
                            ),
                          ),
                          Text(
                            "see all",
                            style: GoogleFonts.roboto(
                              fontSize: 18.2,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromARGB(255, 81, 177, 255),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 16.8, left: 28.8, right: 28.8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Poisonus Plants",
                            style: GoogleFonts.amaranth(
                              fontSize: 32.6,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 38, 36, 36),
                            ),
                          ),
                          Text(
                            "see all",
                            style: GoogleFonts.roboto(
                              fontSize: 18.2,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromARGB(255, 81, 177, 255),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 16.8, left: 28.8, right: 28.8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Indoor Plants",
                            style: GoogleFonts.amaranth(
                              fontSize: 32.6,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 38, 36, 36),
                            ),
                          ),
                          Text(
                            "see all",
                            style: GoogleFonts.roboto(
                              fontSize: 18.2,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromARGB(255, 81, 177, 255),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
