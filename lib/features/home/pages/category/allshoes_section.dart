import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hapus_ecommerce/preferences/preferences.dart';

class AllShoes extends StatelessWidget {
  const AllShoes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Popular Products', style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  color: CustomColor.primaryText
              ),),
              const SizedBox(height: 14,),
              SizedBox(
                height: 278,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: 215,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/shoe1.png'),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 30,),
                                const Text('Hiking', style: TextStyle(
                                    color: CustomColor.secondaryText,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal
                                ),),
                                const SizedBox(height: 6,),
                                Text('TERREX URBAN LOW', style: GoogleFonts.poppins(
                                  color: CustomColor.blackText,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                                const SizedBox(height: 6,),
                                const Text('\$143,98', style: TextStyle(
                                    color: CustomColor.blueText,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600
                                ),)
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(width: 30,);
                  },
                  itemCount: 5,

                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('New Arrivals', style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  color: CustomColor.primaryText
              )),
              const SizedBox(height: 14,),
              SizedBox(
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        Image.asset('assets/images/product1.png'),
                        const SizedBox(width: 12,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Football', style: GoogleFonts.poppins(
                                  color: CustomColor.secondaryText,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal
                              ),),
                              const Text('Predator 20.3 Firm Ground', overflow: TextOverflow.ellipsis, maxLines: 2 ,style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: CustomColor.primaryText
                              ),),
                              const SizedBox(height: 6,),
                              const Text('\$143,98', style: TextStyle(
                                  color: CustomColor.blueText,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600
                              ),)
                            ],
                          ),
                        )
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(height: 30,);
                  },
                  itemCount: 10,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

