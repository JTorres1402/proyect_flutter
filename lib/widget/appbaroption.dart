import 'package:flutter/material.dart';

class AppBarOption extends StatelessWidget with PreferredSizeWidget {
  final String text;

  @override
  final Size preferredSize;
  AppBarOption({Key? key, required this.text})
      : preferredSize = const Size.fromHeight(56.0),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 19),
      ),
      backgroundColor: const Color(0xff1f005c),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1),
            colors: [
              Color(0xff5029ff),
              Color(0xff4b21e6),
              Color(0xff451acd),
              Color(0xff3e13b5),
              Color(0xff370d9d),
              Color(0xff2f0687),
              Color(0xff270271),
              Color(0xff1f005c),
            ],
            tileMode: TileMode.clamp,
          ),
        ),
      ),
    );
  }
}
