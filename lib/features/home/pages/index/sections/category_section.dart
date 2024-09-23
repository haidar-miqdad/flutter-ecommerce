part of '../page.dart';

class _Category extends StatefulWidget {
  const _Category({
    super.key,
  });

  @override
  State<_Category> createState() => _CategoryState();
}

class _CategoryState extends State<_Category> {

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
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
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
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(width: 16,);
          },
          itemCount: category.length,
        ),
      ),
    );
  }
}