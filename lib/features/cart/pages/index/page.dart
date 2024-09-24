import 'package:flutter/material.dart';
import 'package:hapus_ecommerce/preferences/colors.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: CustomColor.primaryBackground,
      appBar: AppBar(
        backgroundColor: const Color(0xff242231),
        title: const Text('Your Cart', style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18,
          color: CustomColor.primaryText,
        ),),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios, color: Colors.white,)),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/cart_page.png'),
              const SizedBox(height: 20,),
              const Text('Opss! Your Cart is Empty', style: TextStyle(
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
      ),
    );
  }
}
