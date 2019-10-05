// import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:dnd_character_sheet/test_tab.dart';
import 'package:dnd_character_sheet/presentation/my_icons_icons.dart';


class DndApp extends StatelessWidget{
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: DndHomeScreenTabs(),
    );
  }
}

class DndHomeScreenTabs extends StatefulWidget {
  @override
  _DndHomeScreenTabsState createState() => _DndHomeScreenTabsState();
}


// with AutomaticKeepAliveClientMixin
// @override
//   bool get wantKeepAlive => true;
class _DndHomeScreenTabsState extends State<DndHomeScreenTabs>{
  final _tabController = CupertinoTabController(initialIndex: 2);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(MyIcons.colorize),
            title: Text('Spells'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            title: Text('Lore'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.plus_circled),
            title: Text('Stats'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.plus_circled),
            title: Text('Skills'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.plus_circled),
            title: Text('Weapons'),
          ),
        ],
      ),
      controller: _tabController,
      tabBuilder: (context, tabIndex) {
        switch (tabIndex) {
          case 0:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: TestTab(),
              );
            });
          case 1:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: Center(
                  child: Text('Tab 2'),
                ),
              );
            });
          case 2:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: Center(
                  child: Text('Tab 3'),
                ),
              );
            });
          case 3:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: Center(
                  child: Text('Tab 4'),
                ),
              );
            });
          case 4:
            return CupertinoTabView(builder: (context) {
              return CupertinoPageScaffold(
                child: Center(
                  child: Text('Tab 5'),
                ),
              );
            });
        }
      },
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}


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
