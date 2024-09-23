import 'package:flutter/material.dart';
import '../../../../../preferences/preferences.dart';

class CategorySection extends StatefulWidget {
  const CategorySection({super.key});

  @override
  State<CategorySection> createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {

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
    return Padding(
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

    );
  }
}


