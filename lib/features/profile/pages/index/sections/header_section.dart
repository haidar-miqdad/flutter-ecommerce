part of '../page.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Image.asset(
            'assets/images/profileHeader.png',
            width: 54,
            height: 54,
          ),
          const SizedBox(width: 16),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hallo, Alex',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: CustomColor.primaryText),
                ),
                Text(
                  '@alexkeinn',
                  style: TextStyle(
                    fontSize: 14,
                    color: CustomColor.greyText,
                  ),
                ),
              ],
            ),
          ),
          const Icon(CustomIcon.exit, color: Color(0xffED6363)),
        ],
      ),
    );
  }
}