import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:integrate/widgets/app_large_text.dart';
import 'package:integrate/widgets/app_text.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> with TickerProviderStateMixin {
  var image = {
    "balloning.png":"Balloning",
    "hiking.png":"Hiking",
    "kayaking.png":"Kayaking",
    "snorkling.png":"Snorkling"
  };

  var place_s = {
    "manali.jpg":"Manali",
    "kasol.jpg":"Kasol",
    "shimla.jpg":"shimla",
    "jibhi.jpg":"Jibhi",
    "mcleodganj.jpg":"Mcleodganj",
    "spitivalley.jpg":"Spiti Valley",
    "dalhousie.jpg":"Dalhousie",
    "birbilling.jpg":"Bir Billing",
    "kasauli.jpg":"Kasauli",
    "fagu.jpg":"Fagu",

  };

  var str = "img/";
  @override
  Widget build(BuildContext context) {
  TabController _tabController = TabController(length:place_s.length,vsync:this);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // icon and grey container -- menu text
        Container(
          padding: const EdgeInsets.only(top:70,left:20),
          child: Row(children: [
            // Icon(Icons.menu,size: 30, color: Colors.black54,)
         Expanded(child: Container()),
         Container(
          margin: const EdgeInsets.only(right: 20),
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("img/person.jpg")),
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.withOpacity(0.5),
          ),
         )
          ]),
        ),
         SizedBox(height: 40,),
         // discover text 
        Container(
          margin: const EdgeInsets.only(left: 20),
         
        child:App_large_text(text: "Discover",)
        ),
        SizedBox(
          height: 20,
        ),
        // tab bar text 
        Container(
          margin: const EdgeInsets.only(left: 20),

          child: Align(
            alignment: Alignment.centerLeft,
            child: App_text(text: 'Places'),)
        ),
        
        // tab view photos
        Container(
          margin: const EdgeInsets.only(left: 20),

           height:300,
            width:double.maxFinite,
          child: ListView.builder(
                itemCount :place_s.length, 
                scrollDirection:Axis.horizontal,
                itemBuilder: (BuildContext context , int index){
               
                return Column(
                  children: [
                    Container(
                  margin: const EdgeInsets.only(right:15),
              width: 200,
              height: 280,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(20),
                   color: Colors.white,
                   image:DecorationImage(image: AssetImage(
                str+place_s.keys.elementAt(index),
              ),
              fit: BoxFit.cover
              ),
              ),
            ) , 
            Container(
              child: App_text(color: Colors.black54 ,
              text: place_s.values.elementAt(index) ,size: 14,),
            )
                  ],
                );
              },),
        ),
        SizedBox(height: 50,),
        // explore more and see all text is here
        Container(
          margin: const EdgeInsets.only(left: 20,right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            App_large_text(text: "Explore Activities", size: 22,),
            // App_text(size:17,text: "See all", color: Colors.black54,),
          ]),
        ),

        SizedBox(height: 20,),
        Container(
          height: 100,
          width: double.maxFinite,
          margin: const EdgeInsets.only(left: 20),
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_,index_){
              return Container(
                margin: const EdgeInsets.only(right: 30),
                child:Column(
                children: [
                  Container(
                  // margin: const EdgeInsets.only(right:50),
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(20),
                   color: Colors.white,
                   image:DecorationImage(image: AssetImage(
                str+image.keys.elementAt(index_),
              ),
              fit: BoxFit.cover
              ),
              ),
            ),
            Container(
              child: App_text(color: Colors.black54 ,
              text: image.values.elementAt(index_) ,size: 14,),
            )

                ],
              ),
              );
            }),)
      ]),

    );
    
  }
}


// class CircleTabIndicator extends Decoration{
//   final Color color;
//   double radius;
//   CircleTabIndicator({required this.color , required this.radius});
//   @override
//   BoxPainter createBoxPainter([VoidCallback onChanged]) {
//     // TODO: implement createBoxPainter
//     return _CirclePainter(color:color,radius:radius);
//   }

// }

// class _CirclePainter extends BoxPainter{
//   final Color color;
//   double radius;
//   _CirclePainter({required this.color , required this.radius})
//   @override
//   void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
//     // TODO: implement paint
//     Paint _paint = Paint();
//     _paint.color = color;
//     _paint.isAntiAlias = true;

//     final Offset circleOffset= Offset(configuration.size!.width/2-radius/2,configuration.size!.height-radius);
  
    

//     canvas.drawCircle(offset, radius, _paint);
    
//   }

// }



