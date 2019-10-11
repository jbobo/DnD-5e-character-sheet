// import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swipedetector/swipedetector.dart';

import 'package:dnd_character_sheet/test_tab.dart';
import 'package:dnd_character_sheet/presentation/my_icons_icons.dart';


class DndApp extends StatelessWidget{
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: new Scaffold(
          body: TabBarView(
            children: [
              new Container(
                color: Colors.yellow,
              ),
              new Container(
                color: Colors.orange,
              ),
              new Container(
                color: Colors.lightGreen,
              ),
              new Container(
                color: Colors.red,
              ),
            ],
          ),
          bottomNavigationBar: new TabBar(
            tabs: [
              Tab(
                icon: new Icon(Icons.home),
              ),
              Tab(
                icon: new Icon(Icons.rss_feed),
              ),
              Tab(
                icon: new Icon(Icons.perm_identity),
              ),
              Tab(icon: new Icon(Icons.settings),)
            ],
            labelColor: CupertinoColors.activeBlue,
            unselectedLabelColor: CupertinoColors.inactiveGray,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(3.0),
            indicatorColor: CupertinoColors.activeBlue,
          ),
          backgroundColor: CupertinoColors.lightBackgroundGray,
        )
      ),
    );
  }
}

// class DndHomeScreenTabs extends StatefulWidget {
//   @override
//   _DndHomeScreenTabsState createState() => _DndHomeScreenTabsState();
// }

// class _DndHomeScreenTabsState extends State<DndHomeScreenTabs> with SingleTickerProviderStateMixin{
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoTabScaffold(
//       tabBar: CupertinoTabBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(MyIcons.magic_wand),
//             title: Text('Spells'),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(MyIcons.edit_1),
//             title: Text('Lore'),
//           ),
//         ],
//       ),
//       tabBuilder: (context, tabIndex) {
//         Widget _child;
//         switch (tabIndex){
//           case 0:
//             _child = TestTab();
//             break;
//           case 1:
//             _child = Center(child: Text("Tab 2"),);
//             break;
//         }
//         return CupertinoTabView(builder: (context) {
//           return CupertinoPageScaffold(
//             child: _child,
//           );
//         });
//       },
//     );
//   }
// }


// class DndHomeScreen extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//       navigationBar: CupertinoNavigationBar(
//         middle: const Text('DnD 5e Character Sheet'),
//       ),
//       child: Center(
//         child: Text('Hello World'),
//       ),
//     );
//   }
// }


// class HomeScreenTabs extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoTabScaffold(
//       tabBar: CupertinoTabBar(
//         items: <BottomNavigationBarItem> [
//           // ...
//         ],
//       ),
//       tabBuilder: (BuildContext context, int index) {
//       },
//     );
//   }
// }

// CupertinoPageRoute(
//      builder: (context) {
//        //YOUR SCREEN COMES HERE
//     },
// ),

// CupertinoPageScaffold(
//       navigationBar: CupertinoNavigationBar(
//         middle: Text('Inside $topic'),
//       ),
//       child:  //YOUR CHILD WIDGET
// );
