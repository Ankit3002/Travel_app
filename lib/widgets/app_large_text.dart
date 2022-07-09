import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class App_large_text extends StatelessWidget {
  double size;
  final String  text;
  final Color color;
  App_large_text({Key? key ,
  this.text = "ankit",
  this.size = 30,
  this.color = Colors.black,
  }) : super(key: key);
  
  

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
    
  }
}