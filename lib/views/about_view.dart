import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:soy_rico/components/custom_edittext.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorLight,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/circle_avatar.jpg'),
            ),
            const Text(
              "Marcos Núñez",
              style: TextStyle(
                fontSize: 48,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico',
              ),
            ),
            const Text(
              "I know that I Know nothing",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
                fontFamily: 'Source Sans Pro',
              ),
            ),
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(color: Theme.of(context).primaryColorLight,),
            ),
            const CustomEdittext(
                customText: "+34 123 456 789", customIcon: Icons.phone),
            const CustomEdittext(
                customText: "myemail@gmail.com", customIcon: Icons.email),
          ],
        ),
      ),
    );
  }
}
