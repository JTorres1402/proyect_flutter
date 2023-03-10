import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class PasswordInput extends StatefulWidget {
  final TextEditingController inputController;
  const PasswordInput({Key? key, required this.inputController})
      : super(key: key);

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xff4338CA);
    const secondaryColor = Color(0xff3e13b5);
    const accentColor = Color(0xffffffff);
    const errorColor = Color(0xffEF4444);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 50,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                offset: const Offset(12, 26),
                blurRadius: 50,
                spreadRadius: 0,
                color: Colors.grey.withOpacity(.1)),
          ]),
          child: TextField(
            controller: widget.inputController,
            obscureText: passToggle,
            onChanged: (value) {
              //Do something wi
            },
            keyboardType: TextInputType.visiblePassword,
            style: const TextStyle(fontSize: 14, color: Colors.black),
            decoration: InputDecoration(
              label: Text(AppLocalizations.of(context).inputpass),
              labelStyle: const TextStyle(color: primaryColor),
              prefixIcon: const Icon(Icons.lock, color: secondaryColor),
              filled: true,
              fillColor: accentColor,
              suffixIcon: InkWell(
                onTap: () {
                  setState(() {
                    passToggle = !passToggle;
                  });
                },
                child: Icon(
                  passToggle ? Icons.visibility : Icons.visibility_off,
                  color: const Color(0xff3e13b5),
                ),
              ),
              hintStyle: TextStyle(color: Colors.grey.withOpacity(.75)),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              border: const OutlineInputBorder(
                borderSide: BorderSide(color: primaryColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: secondaryColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: errorColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: primaryColor, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
