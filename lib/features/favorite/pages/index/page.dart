import 'package:flutter/material.dart';
import 'package:hapus_ecommerce/preferences/colors.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 30),
          child: Center(
            child: Text(
              'Message Support',
              style: TextStyle(
                fontSize: 18,
                color: CustomColor.primaryText,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/love.png'),
              const SizedBox(height: 20,),
              const Text(' You don\'t have dream shoes?', style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: CustomColor.primaryText
              ),),
              const SizedBox(height: 12,),
              const Text('Let\'s find your favorite shoes', style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: CustomColor.greyText
              ),),
              const SizedBox(height: 20,),
              TextButton(
                onPressed: (){},
                style: TextButton.styleFrom(
                    backgroundColor: CustomColor.primary,
                    padding: const EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    )
                ),
                child: const Text('Explore More', style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: CustomColor.primaryText,
                )),
              )
            ],
          ),
        ),
      ],
    );
  }
}
