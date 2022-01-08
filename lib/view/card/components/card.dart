import 'package:flutter/material.dart';
import 'package:pepsico_hackathon/view/card/config/size.dart';


class BankCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    double fontSize(double size) {
      return size * width / 414;
    }

    return Container();
      
  }
}
