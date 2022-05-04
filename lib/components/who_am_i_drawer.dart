import 'package:flutter/material.dart';
import 'package:soy_rico/model/entities/drawer_element.dart';
import 'package:soy_rico/pages/im_poor_page.dart';

import 'basic/who_am_i_appbar.dart';

class WhoAmIDrawer extends StatelessWidget {
  final List<DrawerElement> topElements;
  final List<DrawerElement> bottomElements;

  const WhoAmIDrawer({Key? key, required this.topElements, this.bottomElements = const []}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final topTiles = topElements.map(
      (e) => ListTile(
        title: Text(e.name),
        onTap: () {
          e.callback();
          Navigator.pop(context);
        },
      ),
    );

    final bottomTiles = bottomElements.map(
          (e) => ListTile(
        title: Text(e.name),
        onTap: () {
          e.callback();
          Navigator.pop(context);
        },
      ),
    );

    Drawer drawer = Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[

          /* Drawer Header */
          const DrawerHeader(
            decoration: BoxDecoration(color: Color(0xFFf44336)),
            // TODO: por que no funciona Theme.of(context).primaryColor
            child: Text('Drawer Header'),
          ),
          ...topTiles,

          const Divider(color: Colors.grey),

          ...bottomTiles,

          /* Bottom tiles */
          // ListTile(
          //   title: const Text('Sobre mi'),
          //   onTap: () {
          //     // TODO: Implementar fragment
          //
          //     Navigator.pop(context);
          //   },
          // ),
        ],
      ),
    );

    return drawer;
  }
}
