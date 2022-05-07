import 'package:flutter/material.dart';
import 'package:soy_rico/components/who_am_i_drawer.dart';

import 'im_poor_view.dart';
import 'im_professor_view.dart';
import 'im_rich_view.dart';

enum DrawerView { rich, poor, professor, about }

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {

  DrawerView _selectedView = DrawerView.rich;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Who am I?'),
      ),
      drawer: WhoAmIDrawer(selectedView),
      body: _getDrawerViewSelection(_selectedView),
    );
  }

  _getDrawerViewSelection(DrawerView selection) {
    switch(selection) {
      case DrawerView.rich:
        return ImRichView();
      case DrawerView.poor:
        return ImPoorView();
      case DrawerView.professor:
        return ImProfessorView();
      default:
        return new Text("Error has ocurred.");
    }
  }
}
