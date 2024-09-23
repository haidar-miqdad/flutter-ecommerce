import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hapus_ecommerce/preferences/preferences.dart';
import '../category/category.dart';

part 'sections/header_section.dart';
part 'sections/category_section.dart';
part 'sections/popular_product_section.dart';
part 'sections/new_arrival_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget _categoryItem(int index, Widget section) {
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

  List<String> category = [
    'All Shoes',
    'Running',
    'Basketball',
    'Football',
    'Futsal'
  ];


  List<Widget> sections = const [
    AllShoes(),
    RunningSection(),
    BasketballSection(),
    FootballSection(),
    FutsalSection()
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
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _categoryItem(0, AllShoes()),
                _categoryItem(1, BasketballSection()),
                _categoryItem(2, FootballSection()),
                _categoryItem(3, FutsalSection()),
              ],
            ),
          ),
        ),
        const SizedBox(height: 30,),
        sections[selectedIndex],
      ],
    );
  }


}

