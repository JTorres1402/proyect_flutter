import 'package:flutter/material.dart';
import 'package:taller/generated/l10n.dart';
import 'package:taller/widget/widget.dart';

class PlacesScreen extends StatefulWidget {
  const PlacesScreen({super.key});

  @override
  State<PlacesScreen> createState() => _PlacesScreenState();
}

class _PlacesScreenState extends State<PlacesScreen> {
  late String input1, input2;
  TextEditingController controlador1 = TextEditingController();
  TextEditingController controlador2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBarOption(text: AppLocalizations.of(context).menuopt1),
      body: BackgroundImage(
        imageUrl: 'assets/image/background.jpg',
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: (height * 3) / 100,
                ),
                Text(
                  AppLocalizations.of(context).menuopt1,
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: (height * 3) / 100,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: AppLocalizations.of(context).labelnamepla,
                    filled: true,
                    fillColor: Colors.white,
                    border: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff3e13b5), width: 1.5),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff5029ff), width: 1.5),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                  controller: controlador1,
                  keyboardType: TextInputType.text,
                  onChanged: (value) => {
                    input1 = value,
                  },
                ),
                SizedBox(
                  height: (height * 3) / 100,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: AppLocalizations.of(context).labeladdres,
                    filled: true,
                    fillColor: Colors.white,
                    border: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff3e13b5), width: 1.5),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff5029ff), width: 1.5),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                  controller: controlador2,
                  keyboardType: TextInputType.text,
                  onChanged: (value) => {
                    input2 = value,
                  },
                ),
                SizedBox(
                  height: (height * 5) / 100,
                ),
                GradientButton(
                  text: AppLocalizations.of(context).btnadd,
                  onPressed: () {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: Text(AppLocalizations.of(context).menuopt1),
                        content: Text(
                            '${AppLocalizations.of(context).labelnamepla}: $input1\n${AppLocalizations.of(context).labeladdres}: $input2'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => {
                              Navigator.pop(context, 'OK'),
                              controlador1.clear(),
                              controlador2.clear(),
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
