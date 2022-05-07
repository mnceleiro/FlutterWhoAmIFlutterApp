import 'package:flutter/material.dart';
import 'package:soy_rico/model/entities/drawer_element.dart';

class DrawerElementsHelper {
// TODO:  Refactorizar: estos no forman parte del modelo, por tanto donde sería más correcto ponerlos?
// TODO: ¿Lista estática? singleton?
  final BuildContext context;
  List<DrawerElement>? topElements;
  List<DrawerElement>? bottomElements;

  DrawerElementsHelper(this.context);

  getTopDrawerElements() {
    topElements ??= <DrawerElement>[
      DrawerElement(name: "Soy rico", callback: () {

      }),
      DrawerElement(
          name: "Soy pobre",
          callback: () {

          }),
      DrawerElement(name: "Soy profesor", callback: () {

      }),
    ];

    return topElements;
  }

  getBottomDrawerElements() {
    bottomElements ??= <DrawerElement>[
      DrawerElement(name: "Sobre mi", callback: () {

      }),
    ];

    return bottomElements;
  }
}
