
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:integrate/pages/navpages/home_page.dart';
import 'package:integrate/pages/navpages/search_page.dart';

import 'bar_item_page.dart';
import 'my_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex=0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });
  }
  List Pages = [
    homepage(),
    baritempage(),
    searchpage(),
    mypage(),
    
  ];
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Colors.white,
      body: Pages[currentIndex],
    //   bottomNavigationBar:BottomNavigationBar(
    //     unselectedFontSize: 0,
    //     selectedFontSize: 0,
    //     type: BottomNavigationBarType.fixed,
    //     backgroundColor: Colors.white,
    //     onTap: onTap,
    //     currentIndex: currentIndex,
    //     selectedItemColor: Colors.black54,
    //     unselectedItemColor: Colors.grey.withOpacity(0.5),
    //     showSelectedLabels: false,
    //     showUnselectedLabels: false,
    //     elevation: 0,
  
    //     items: [
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.apps),
    //         label: 'apps',
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.bar_chart_sharp),
    //         label: 'Bar',
    //       ),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.search),
    //         label: 'Search',),
    //       BottomNavigationBarItem(
    //         icon: Icon(Icons.people),
    //         label: 'My',
    //       ),
    //     ]
    // )  
     );
  }
}
    
// return Scaffold(
//       backgroundColor: Colors.white,
//       body:pages[0],
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         backgroundColor: Colors.white,
//         onTap: onTap,
//         currentIndex: current_index,
//         selectedItemColor:Colors.black54,
//         unselectedItemColor:Colors.grey.withOpacity(0.5),
//         // showSelectedLabels false,
//         showSelectedLabels: false,
        
//         items: const <BottomNavigationBar> [
//           BottomNavigationBarItem(label:"home" ,icon:  Icon(Icons.person)),
//           BottomNavigationBarItem(icon:  Icon(Icons.person)),

//       ]),
//     );
//   }
// }


// BottomNavigationBarItem(icon:Icon(Icons.apps)),
//         BottomNavigationBarItem(icon: Icon(Icons.bar_chart_sharp)),
//         BottomNavigationBarItem(icon: Icon(Icons.search)),
//         BottomNavigationBarItem(icon: Icon(Icons.person)),
