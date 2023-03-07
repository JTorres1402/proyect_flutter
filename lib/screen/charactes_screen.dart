import 'package:flutter/material.dart';

import '../generated/l10n.dart';
import '../widget/widget.dart';

const List<String> list = <String>[
  '',
  'Argentino/a',
  'Boliviano/a',
  'Chileno/a',
  'Colombiano/a',
  'Ecuatoriano/a',
  'Paraguayo/a',
  'Peruano/a',
  'Uruguayo/a',
  'Venezolano/a'
];

class CharactesScreen extends StatefulWidget {
  const CharactesScreen({super.key});

  @override
  State<CharactesScreen> createState() => _CharactesScreenState();
}

class _CharactesScreenState extends State<CharactesScreen> {
  late String input1, input2, input3;
  String dropdownValue = list.first;
  TextEditingController controlador1 = TextEditingController();
  TextEditingController controlador2 = TextEditingController();
  TextEditingController controlador3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBarOption(text: AppLocalizations.of(context).menuopt2),
      body: SingleChildScrollView(
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: (height * 3) / 100,
              ),
              Text(
                AppLocalizations.of(context).menuopt2,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: (height * 3) / 100,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: AppLocalizations.of(context).labelnamepers,
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
              DropdownButtonFormField<String>(
                value: dropdownValue,
                elevation: 16,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.black, width: 1.5),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
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
                  filled: true,
                  fillColor: Colors.white,
                ),
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    dropdownValue = value!;
                  });
                },
                items: list.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(
                height: (height * 3) / 100,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: AppLocalizations.of(context).labelcontribu,
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
                      title: Text(AppLocalizations.of(context).menuopt2),
                      content: Text(
                          '${AppLocalizations.of(context).labelnamepers}: $input1\n${AppLocalizations.of(context).labelnanatio}: $dropdownValue\n${AppLocalizations.of(context).labelcontribu}: $input2'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => {
                            Navigator.pop(context, 'OK'),
                            controlador1.clear(),
                            controlador2.clear(),
                            dropdownValue = '',
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
        )),
      ),
    );
  }
}
