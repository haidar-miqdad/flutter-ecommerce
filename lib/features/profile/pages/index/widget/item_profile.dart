part of '../page.dart';

class ItemProfile extends StatelessWidget {
  const ItemProfile({
    super.key,
    required this.title
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child:  ListTile(
        title: Text(title, style: const TextStyle(
            color: CustomColor.secondaryText
        ),),
        trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 18, color: CustomColor.secondaryText,),
      ),
    );
  }
}


