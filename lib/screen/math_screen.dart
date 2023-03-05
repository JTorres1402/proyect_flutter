import 'dart:math';

import 'package:flutter/material.dart';
import 'package:taller/widget/widget.dart';

import '../generated/l10n.dart';

class MathScreen extends StatefulWidget {
  const MathScreen({super.key});

  @override
  State<MathScreen> createState() => _MathScreenState();
}

class _MathScreenState extends State<MathScreen> {
  final ecu = Ecuaciones();
  late String input1, input2;
  int num1 = 0, num2 = 0;
  void _state() {
    setState(() {
      ecu.mcd;
    });
  }

  TextEditingController controlador1 = TextEditingController();
  TextEditingController controlador2 = TextEditingController();
  TextEditingController controlador3 = TextEditingController();
  TextEditingController controlador4 = TextEditingController();
  TextEditingController controlador5 = TextEditingController();
  TextEditingController controlador6 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context).mat1,
            style: const TextStyle(color: Colors.white, fontSize: 19),
          ),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                // text: 'Hola',
                icon: Icon(Icons.looks_one_rounded),
              ),
              Tab(
                icon: Icon(Icons.looks_two_rounded),
              ),
              Tab(
                icon: Icon(Icons.looks_3_rounded),
              ),
            ],
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
        ),
        body: TabBarView(
          children: <Widget>[
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: (height * 9) / 100,
                    ),
                    Text(
                      AppLocalizations.of(context).labelecu,
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: (height * 3) / 100,
                    ),
                    TextField(
                      controller: controlador3,
                      keyboardType: TextInputType.number,
                      onChanged: (value) => {
                        input1 = value,
                      },
                    ),
                    SizedBox(
                      height: (height * 4) / 100,
                    ),
                    TextField(
                      controller: controlador4,
                      keyboardType: TextInputType.number,
                      onChanged: (value) => {
                        input2 = value,
                      },
                    ),
                    SizedBox(
                      height: (height * 10) / 100,
                    ),
                    GradientButton(
                      text: AppLocalizations.of(context).btncalcu,
                      onPressed: () => {},
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: (height * 9) / 100,
                    ),
                    Text(
                      AppLocalizations.of(context).labelmcdandmcm,
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: (height * 3) / 100,
                    ),
                    TextField(
                      controller: controlador3,
                      keyboardType: TextInputType.number,
                      onChanged: (value) => {
                        input1 = value,
                      },
                    ),
                    SizedBox(
                      height: (height * 4) / 100,
                    ),
                    TextField(
                      controller: controlador4,
                      keyboardType: TextInputType.number,
                      onChanged: (value) => {
                        input2 = value,
                      },
                    ),
                    SizedBox(
                      height: (height * 10) / 100,
                    ),
                    GradientButton(
                      text: AppLocalizations.of(context).btncalcu,
                      onPressed: () => {
                        if (input1 != null || input2 != null)
                          {
                            num1 = int.parse(input1),
                            num2 = int.parse(input2),
                            ecu.num1 = num1,
                            ecu.num2 = num2,
                            controlador3.clear(),
                            controlador4.clear()
                          },
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Resultado MCM'),
                            content:
                                Text('MCM de $input1 y $input2 es ${ecu.mcm}'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(context, 'Cancel'),
                                child: const Text('Cancel'),
                              ),
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        ),
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Resultado MCD'),
                            content:
                                Text('MCD de $input1 y $input2 es ${ecu.mcd}'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(context, 'Cancel'),
                                child: const Text('Cancel'),
                              ),
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        ),
                        _state(),
                      },
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: (height * 9) / 100,
                    ),
                    Text(
                      AppLocalizations.of(context).labelfibona,
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: (height * 3) / 100,
                    ),
                    TextField(
                      controller: controlador3,
                      keyboardType: TextInputType.number,
                      onChanged: (value) => {
                        input1 = value,
                      },
                    ),
                    SizedBox(
                      height: (height * 4) / 100,
                    ),
                    TextField(
                      controller: controlador4,
                      keyboardType: TextInputType.number,
                      onChanged: (value) => {
                        input2 = value,
                      },
                    ),
                    SizedBox(
                      height: (height * 10) / 100,
                    ),
                    GradientButton(
                      text: AppLocalizations.of(context).btncalcu,
                      onPressed: () => {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Ecuaciones {
  int? num1;
  int? num2;

  static int MCD(int a, int b) {
    int temporal; //Para no perder b
    while (b != 0) {
      temporal = b;
      b = a % b;
      a = temporal;
    }
    return a;
  }

  num get mcd {
    if (num1 == null || num2 == null) {
      return 0;
    } else {
      int a = min(num1!, num2!);
      int b = max(num1!, num2!);

      int resultado = 0;
      do {
        resultado = b;
        b = a % b;
        a = resultado;
      } while (b != 0);
      return resultado;
    }
  }

  num get mcm {
    if (num1 == null || num2 == null) {
      return 0;
    } else {
      int a = num1!;
      int b = num2!;
      return (num1! * num2!) / MCD(a, b);
    }
  }
}
