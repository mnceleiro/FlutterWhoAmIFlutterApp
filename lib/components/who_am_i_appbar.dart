import 'package:flutter/material.dart';

class WhoAmIAppBar extends StatelessWidget with PreferredSizeWidget {
  const WhoAmIAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Who Am I?'),
      backgroundColor: const Color(0xFFf44336),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
