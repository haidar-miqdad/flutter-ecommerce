part of '../page.dart';

class _NewArrival extends StatelessWidget {
  const _NewArrival({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}


