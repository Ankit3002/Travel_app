import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:integrate/widgets/app_large_text.dart';
import 'package:integrate/widgets/app_text.dart';
import 'package:integrate/widgets/responsive_button.dart';

class Welcomepage extends StatefulWidget {
  const Welcomepage({Key? key}) : super(key: key);

  @override
  State<Welcomepage> createState() => _WelcomepageState();
}

class _WelcomepageState extends State<Welcomepage> {
  List images = [
    "welcome-one.png",
    "my_photo.png",
    "welcome-three.png",

  ];
  var str = "img/";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 3,
        itemBuilder: (_,index){
        return Container(
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                str+images[index]
              ),
              fit: BoxFit.cover
            )
          ),
          child: Container(
            margin:  EdgeInsets.only(top: 150,left: 20 ,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: 
            [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              App_large_text(size: 32,text:'Trips',color: Colors.amber,),
              App_text(size: 19,text: "Mountains", color: Colors.teal,),
              SizedBox(height: 10,),
              Container(
                width: 250,
                child: App_text(
                  size: 19,
                  color: Colors.black26,
                  text:'This is iti monty place where iitians come to ruin their dreams',
                ),
                
              ),
              SizedBox(height: 50,),
              responsive_button(width: 100,),
            ],),

            Column(
              children: List.generate(3, (indexdots){
                return Container(
                  margin: const EdgeInsets.only(bottom: 2),
                  width: 8,
                  height: index==indexdots?25:8,
                  decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(8),
                    color:index==indexdots?Color(0xFF5c66bd):Color(0x5c66bd).withOpacity(0.3),
                    ),
                  
                  


                );
              })
              
              ,
            )

            ]),
          ),
        );

      },
    ));
    
  }
}