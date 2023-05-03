import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:ticket_app/utils/app_layout.dart';
import 'package:ticket_app/utils/app_style.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key?key, required this.hotel}) : super(key:  key);

  @override
  Widget build(BuildContext context) {
    print('Hotel price is ${ hotel[' price ']  }');

    final size = AppLayout.getSize(context);
    return Container
    (
      width: size.width*0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius:  BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 2,
            spreadRadius: 5,

          )
        ]
      ),
      child:  Column(
        crossAxisAlignment:  CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.bgColor,
              image:  DecorationImage(
                 fit: BoxFit.cover,
                image:  AssetImage(
                    'assets/images/hotel1.jpg/${hotel [ 'image' ]}'
                )
              )

            ),
          ),
       const Gap(10),
       Text("Open Space", style:  Styles.headlineStyles2.copyWith(color: Colors. white),),
       const Gap(5),
       
       Text("London", style: Styles.headlineStyles3.copyWith(color: Colors.white),),
        const Gap(8),

        Text("\PHP5,500/night", style: Styles.headlineStyles3.copyWith(color: Colors.white),),
        ],
      ),
    );
  }
}