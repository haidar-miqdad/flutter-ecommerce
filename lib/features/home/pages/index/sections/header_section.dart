
part of '../page.dart';

class _Header extends StatelessWidget {
  const _Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hallo, Alex',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: CustomColor.primaryText,
                ),
              ),
              Text(
                '@alexkein',
                style: TextStyle(color: CustomColor.greyText, fontSize: 16, fontWeight: FontWeight.normal),
              )
            ],
          ),
          Image.asset('assets/images/profileHeader.png', width: 54, height: 54,),
        ],
      ),
    );
  }
}