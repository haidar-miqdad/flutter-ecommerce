import 'package:flutter/material.dart';
import '../../../../preferences/preferences.dart';

part 'sections/header_section.dart';
part 'widget/item_profile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HeaderSection(),
        SizedBox(
          height: 50,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 17.0),
              child: Text(
                'Account',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: CustomColor.primaryText),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            ItemProfile(title: 'Edit Profile'),
            ItemProfile(title: 'Your Order'),
            ItemProfile(title: 'Help'),

          ],
        ),
        SizedBox(height: 30,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 17.0),
              child: Text(
                'General',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: CustomColor.primaryText),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            ItemProfile(title: 'Privacy & Policy'),
            ItemProfile(title: 'Term & Conditions'),
            ItemProfile(title: 'Rate App'),
          ],
        ),
      ],
    );
  }


}

