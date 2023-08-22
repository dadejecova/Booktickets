import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String smallText;
  const AppDoubleTextWidget({super.key, required this.bigText, required this.smallText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: Styles.headLinesStyle2,),
        InkWell(
            onTap: (){
              print("You're tapped");
            },
            child: Text(smallText, style:  Styles.textStyle.copyWith(color: Styles.primaryColor),)) //1:33
      ],
    );
  }
}
