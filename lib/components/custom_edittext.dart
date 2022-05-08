import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:soy_rico/view_models/card_view_model.dart';

class CustomEdittext extends StatelessWidget {
  final String customText;
  final IconData customIcon;

  const CustomEdittext({Key? key, required this.customText, required this.customIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    CardViewModel viewModel = CardViewModel();

    // return GestureDetector(
    // onTap: () {
    //   print("Hola he sido pulsado!! sin efecto visual!");
    // },
    return TextButton(
      onPressed: () {
        if (customIcon == Icons.phone) {
          viewModel.makePhoneCall(customText);
        } else if (customIcon == Icons.email) {
          viewModel.sendEmail(customText);
        } else {
          // print("He presionado $customText");
          print("Función no implementada");
        }
      },
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        color: Colors.white,
        child: ListTile(
          leading: Icon(
            customIcon,
            size: 20,
            color: Colors.grey.shade900,
          ),
          title: Text(
            customText,
            style: TextStyle(
              fontFamily: 'Source Sans Pro',
              color: Colors.grey.shade900,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
