import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    print('hotel price is ${hotel['price']}');
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width*0.60,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5, bottom: 15),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 5,
          )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/${hotel['image']}"
                )
              )
            ),
          ),
          const Gap(15),
          Text(
            hotel['place'],
            style: Styles.headLinesStyle2.copyWith(color: Styles.kakiColor),
          ),
          const Gap(15),
          Text(
            hotel['destination'],
            style: Styles.headLinesStyle3.copyWith(color: Colors.white),
          ),
          const Gap(15),
          Text(
            "\$${hotel['price']} / Night",
            style: Styles.headLinesStyle.copyWith(color: Styles.kakiColor),
          ),
        ],
      ),
    );
  }
}
