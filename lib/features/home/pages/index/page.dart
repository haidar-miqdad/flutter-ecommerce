import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hapus_ecommerce/preferences/preferences.dart';

import '../../../features.dart';

part 'sections/header_section.dart';
part 'sections/popular_product_section.dart';
part 'sections/new_arrival_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget _categoryItem(int index,) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: GestureDetector(
        onTap: (){
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          width: 83,
          height: 40,
          decoration: BoxDecoration(
            color: selectedIndex == index ? CustomColor.primary : CustomColor.primaryBackground,
            borderRadius: BorderRadius.circular(12),
            border: selectedIndex == index ? null : Border.all(width: 0.5, color: CustomColor.greyText),
          ),
          child: Center(
            child: Text(category[index], style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: Colors.white,
            ),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> sections = const [
    AllShoes(),
    RunningSection(),
    BasketballSection(),
    FootballSection(),
    FutsalSection(),
  ];

  List<String> category = [
    'All Shoes',
    'Running',
    'Basketball',
    'Football',
    'Futsal'
  ];


  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const _Header(),
        const SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: SizedBox(
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return _categoryItem(index);
              },
              itemCount: category.length,
            ),
          ),

        ),
        const SizedBox(height: 30,),
        sections[selectedIndex],
      ],
    );
  }
}

