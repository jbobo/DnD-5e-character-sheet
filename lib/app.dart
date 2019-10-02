// import 'dart:io';

import 'package:flutter/cupertino.dart';

import 'test_tab.dart';


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
  final _controller = CupertinoTabController(initialIndex: 2);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled,),
            title: Text('Tab 1'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.plus_circled),
            title: Text('Tab 2'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.plus_circled),
            title: Text('Tab 3'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.plus_circled),
            title: Text('Tab 4'),
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.plus_circled),
            title: Text('Tab 5'),
          ),
        ],
      ),
      controller: _controller,
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
    _controller.dispose();
    super.dispose();
  }
}


class DndHomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('DnD 5e Character Sheet'),
      ),
      child: Center(
        child: Text('Hello World'),
      ),
    );
  }
}


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
