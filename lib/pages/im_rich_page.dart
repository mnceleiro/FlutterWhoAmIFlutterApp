import 'package:flutter/material.dart';

class ImRichPage extends StatelessWidget {
  const ImRichPage({Key? key}) : super(key: key);

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
