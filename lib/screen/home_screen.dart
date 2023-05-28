import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
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
          decoration:
              const BoxDecoration(color: Color.fromRGBO(131, 118, 79, 100)),
          child: ListView(
            children: [
              Container(
                height: 300,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12.0),
                      bottomRight: Radius.circular(12.0)),
                  image: DecorationImage(
                      image: AssetImage("assets/images/hutan.jpg"),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 68.8, left: 28.8, right: 28.8),
                  child: Text(
                    "PlantET",
                    style: GoogleFonts.amaranth(
                      // fontSize: currentWidth < 370 ? 46.6 : 52.6,
                      fontSize: 52.6,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
