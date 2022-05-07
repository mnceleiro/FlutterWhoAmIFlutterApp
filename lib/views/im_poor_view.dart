import 'package:flutter/material.dart';
import 'package:soy_rico/components/basic/who_am_i_appbar.dart';
import 'package:soy_rico/components/who_am_i_drawer.dart';

class ImPoorView extends StatelessWidget {
  const ImPoorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        "images/icon_poor.png",
        width: 300,
        height: 300,
      ),
    );
  }
}