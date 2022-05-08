// import 'package:flutter/material.dart';
// import 'package:soy_rico/helpers/status_elements_viewmodel.dart';
// import 'package:soy_rico/model/entities/status.dart';
//
// class WhoAmIDrawer extends StatelessWidget {
//   const WhoAmIDrawer({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     DrawerElementsHelper drawerHelper = DrawerElementsHelper(context);
//     final List<DrawerElement> topElements = drawerHelper.getTopDrawerElements();
//     final List<DrawerElement> bottomElements = drawerHelper.getBottomDrawerElements();
//
//     final topTiles = topElements.map(
//       (e) => ListTile(
//         title: Text(e.name),
//         onTap: () {
//           Navigator.pop(context);
//           e.callback();
//         },
//       ),
//     );
//
//     final bottomTiles = bottomElements.map(
//           (e) => ListTile(
//         title: Text(e.name),
//         onTap: () {
//           e.callback();
//           //Navigator.pop(context);
//         },
//       ),
//     );
//
//     Drawer drawer = Drawer(
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: <Widget>[
//
//           /* Drawer Header */
//           const DrawerHeader(
//             decoration: BoxDecoration(color: Color(0xFFf44336)),
//             // TODO: por que no funciona Theme.of(context).primaryColor
//             child: Text('Drawer Header'),
//           ),
//
//           ...topTiles,
//           const Divider(color: Colors.grey),
//           ...bottomTiles,
//
//         ],
//       ),
//     );
//
//     return drawer;
//   }
// }
