import 'package:flutter/material.dart';
import 'package:soy_rico/model/entities/status.dart';
import 'package:soy_rico/view_models/status_elements_viewmodel.dart';
import 'package:soy_rico/views/about_view.dart';
import 'package:soy_rico/views/start_view.dart';

import 'im_poor_view.dart';
import 'im_professor_view.dart';
import 'im_rich_view.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final StatusViewModel _viewModel = StatusViewModel();

  @override
  Widget build(BuildContext context) {
    // Creo los elementos para el drawer (convirtiendo de objeto a Widget con map)
    List<Status> statusList = _viewModel.getAllStatus();
    Iterable<Widget> statusListDrawer = statusList.map(
      (e) => ListTile(
        title: Text(e.name),
        onTap: () {
          Navigator.pop(context);

          setState(() {
            _viewModel.currentStatus = e.type;
          });
        },
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(_viewModel.getCurrentStatusInfo().name),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            /* Drawer Header */
            DrawerHeader(
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
              child: const Center(
                child: Text(
                  'Who Am I App',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ...statusListDrawer,
            const Divider(color: Colors.grey),
          ],
        ),
      ),
      body: _getDrawerViewSelection(),
    );
  }

  _getDrawerViewSelection() {
    switch (_viewModel.currentStatus) {
      case StatusType.rich:
        return ImRichView(_viewModel.getCurrentStatusInfo());
      case StatusType.poor:
        return ImPoorView(_viewModel.getCurrentStatusInfo());
      case StatusType.professor:
        return ImProfessorView(_viewModel.getCurrentStatusInfo());
      case StatusType.about:
        return const AboutView();
      default:
        return StartView(_viewModel.getCurrentStatusInfo());
    }
  }
}
