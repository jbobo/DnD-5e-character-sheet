import 'package:flutter/cupertino.dart';


class TestTab extends StatefulWidget {
  @override
  _TestTabState createState() {
    return _TestTabState();
  }
}

class _TestTabState extends State<TestTab> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: const <Widget>[
        CupertinoSliverNavigationBar(
          largeTitle: Text('Test Tab 1'),
        ),
      ],
    );
  }
}


// The Consumer, from the provider package, assists with state management
// import 'package:provider/provider.dart';
// import 'model/app_state_model.dart';
//
// class TestTab extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<AppStateModel>(
//       builder: (context, model, child) {
//         return CustomScrollView(
//           slivers: const <Widget>[
//             CupertinoSliverNavigationBar(
//               largeTitle: Text('Cupertino Store'),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
