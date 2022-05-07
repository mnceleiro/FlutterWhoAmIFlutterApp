import 'package:flutter/material.dart';

class ImRichView extends StatelessWidget {
  const ImRichView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        "images/icon_rich.png",
        width: 300,
        height: 300,
      ),
    );
  }
}
