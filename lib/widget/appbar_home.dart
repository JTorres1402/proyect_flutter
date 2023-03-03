
import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget with PreferredSizeWidget {
  final String text;
  @override
  final Size preferredSize;
  AppBarHome({Key? key, required this.text})
      : preferredSize = const Size.fromHeight(56.0),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xff4338CA);
    const secondaryColor = Color(0xff6D28D9);

    return AppBar(
      automaticallyImplyLeading: false,
      title:
          Text(text, style: const TextStyle(color: Colors.white, fontSize: 25)),
      backgroundColor: primaryColor,
      actions: [
        IconButton(
          icon: const Icon(Icons.more_vert_rounded),
          tooltip: 'Option',
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('This is a snackbar')));
          },
        ),
      ],
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [primaryColor, secondaryColor],
            stops: [0.5, 1.0],
          ),
        ),
      ),
    );
  }
}
