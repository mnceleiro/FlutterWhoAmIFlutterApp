import 'package:flutter/material.dart';
import 'package:soy_rico/views/main_view.dart';

import 'components/who_am_i_appbar.dart';
import 'components/who_am_i_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      /* Basic */
      title: "Who Am I?",
      debugShowCheckedModeBanner: false,

      /* Theme */
      theme: ThemeData(
        primaryColor: const Color(0xFFf44336),
        primaryColorDark: const Color(0xFFba000d),
        primaryColorLight: const Color(0xffff7961),
      ),

      home: MainView()
    );
  }
}
