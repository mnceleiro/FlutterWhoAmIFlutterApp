import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soy_rico/model/entities/status.dart';
import 'package:soy_rico/views/who_am_i_parent_view.dart';

class StartView extends WhoAmIParentView {
  const StartView(Status status, {Key? key}) : super(status, key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(35),
      child: Center(
        child: Text(
            status.description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 35,
              color: Theme.of(context).primaryColor,
            ),
        ),
      ),
    );
  }
}
