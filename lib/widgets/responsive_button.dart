import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class responsive_button extends StatelessWidget {
  bool? isresponsive;
  double?width;
   responsive_button({Key? key , this.width , this.isresponsive=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color:Color(0xFF5c66bd),

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Image.asset("img/button-one.png")
      ]),
    );
  }
}