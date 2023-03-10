import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const ButtonCustom({required this.text, required this.onPressed, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const accentColor = Color(0xffffffff);

    const double borderRadius = 15;

    return DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(1, 1),
                colors: [
                  Color(0xff5029ff),
                  Color(0xff4b21e6),
                  Color(0xff451acd),
                  Color(0xff3e13b5),
                  Color(0xff370d9d),
                  Color(0xff2f0687),
                  Color(0xff270271),
                  Color(0xff1f005c),
                ])),
        child: ElevatedButton(
          style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              alignment: Alignment.center,
              padding: MaterialStateProperty.all(const EdgeInsets.only(
                  right: 30, left: 30, top: 15, bottom: 15)),
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius)),
              )),
          onPressed: onPressed,
          child: Text(
            text,
            style: const TextStyle(color: accentColor, fontSize: 16),
          ),
        ));
  }
}
