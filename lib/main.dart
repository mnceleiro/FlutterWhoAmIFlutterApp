import 'package:flutter/material.dart';
import 'package:soy_rico/model/entities/drawer_element.dart';

import 'components/basic/who_am_i_appbar.dart';
import 'components/who_am_i_drawer.dart';
import 'pages/im_poor_page.dart';
import 'pages/im_rich_page.dart';

void main() {
  runApp(const MyApp(appName: "Who am I?"));
}

class MyApp extends StatelessWidget {
  final String appName;

  const MyApp({Key? key, required this.appName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      /* Basic */
      title: appName,
      debugShowCheckedModeBanner: false,

      /* Theme */
      theme: ThemeData(
        // TODO: mirar como extraerlo a otra clase
        primaryColor: const Color(0xFFf44336),
        primaryColorDark: const Color(0xFFba000d),
        primaryColorLight: const Color(0xffff7961),
      ),

      /* Main scaffold */
      home: Scaffold(
        appBar: const WhoAmIAppBar(),
        drawer: WhoAmIDrawer(
            topElements: getTopDrawerElements(),
        ),
        body: const ImRichPage(),
      ),
    );
  }

  getTopDrawerElements() {
    return <DrawerElement>[
        DrawerElement(
            name: "Soy rico",
            callback: () {}
        ),
      DrawerElement(
          name: "Soy pobre",
          callback: () {}
      ),
      DrawerElement(
          name: "Soy profesor",
          callback: () {}
      ),
    ];
  }

  getBottomDrawerElements() {
    final elements = <DrawerElement>[
      DrawerElement(
          name: "Sobre mi",
          callback: () {}
      ),
    ];
  }
}
