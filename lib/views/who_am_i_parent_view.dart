import 'package:flutter/material.dart';
import 'package:soy_rico/model/entities/status.dart';

abstract class WhoAmIParentView extends StatelessWidget {
  final Status status;

  const WhoAmIParentView(this.status, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        status.imagePath ?? "",
        width: 300,
        height: 300,
      ),
    );
  }
}