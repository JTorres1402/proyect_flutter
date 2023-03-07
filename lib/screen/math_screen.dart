import 'package:flutter/material.dart';
import 'package:taller/widget/widget.dart';

import '../generated/l10n.dart';
import '../logic/math_logic.dart';

class MathScreen extends StatefulWidget {
  const MathScreen({super.key});

  @override
  State<MathScreen> createState() => _MathScreenState();
}

class _MathScreenState extends State<MathScreen> {
  final mcdmcm = MCDMCM();
  late String input1, input2, input3, input4, input5, input6;
  int num1 = 0, num2 = 0, num4 = 0, num5 = 0, num6 = 0;
  double num3 = 0;
  void _stateEcu() {
    setState(() {
      controlador1.clear();
      controlador2.clear();
      controlador3.clear();
    });
  }

  void _stateMcdmcm() {
    setState(() {
      mcdmcm.mcd;
    });
  }

  void _stateFib() {
    setState(() {
      fibo.clear();
      controlador6.clear();
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
                      AppLocalizations.of(context).labelequa,
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: (height * 3) / 100,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: AppLocalizations.of(context).labela,
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
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.5),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                      controller: controlador1,
                      keyboardType: TextInputType.number,
                      onChanged: (value) => {
                        input1 = value,
                      },
                    ),
                    SizedBox(
                      height: (height * 4) / 100,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: AppLocalizations.of(context).labelb,
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
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.5),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                      controller: controlador2,
                      keyboardType: TextInputType.number,
                      onChanged: (value) => {
                        input2 = value,
                      },
                    ),
                    SizedBox(
                      height: (height * 4) / 100,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: AppLocalizations.of(context).labelc,
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
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.5),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                      controller: controlador3,
                      keyboardType: TextInputType.number,
                      onChanged: (value) => {
                        input3 = value,
                      },
                    ),
                    SizedBox(
                      height: (height * 10) / 100,
                    ),
                    GradientButton(
                      text: AppLocalizations.of(context).btncalcu,
                      onPressed: () => {
                        num1 = int.parse(input1),
                        num2 = int.parse(input2),
                        num3 = double.parse(input3),
                        ecuacion(num1, num2, num3),
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title:
                                Text(AppLocalizations.of(context).resultequa),
                            content: Text(
                              '${AppLocalizations.of(context).resultequa}${AppLocalizations.of(context).isEs} \nX1 $ecuX1\nX2 $ecuX2',
                            ),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        ),
                        _stateEcu(),
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
                      AppLocalizations.of(context).labelmcdandmcm,
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: (height * 3) / 100,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: AppLocalizations.of(context).labela,
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
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.5),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                      controller: controlador4,
                      keyboardType: TextInputType.number,
                      onChanged: (value) => {
                        input4 = value,
                      },
                    ),
                    SizedBox(
                      height: (height * 4) / 100,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: AppLocalizations.of(context).labelb,
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
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.5),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                      controller: controlador5,
                      keyboardType: TextInputType.number,
                      onChanged: (value) => {
                        input5 = value,
                      },
                    ),
                    SizedBox(
                      height: (height * 10) / 100,
                    ),
                    GradientButton(
                      text: AppLocalizations.of(context).btncalcu,
                      onPressed: () => {
                        num4 = int.parse(input4),
                        num5 = int.parse(input5),
                        mcdmcm.num1 = num4,
                        mcdmcm.num2 = num5,
                        controlador4.clear(),
                        controlador5.clear(),
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: Text(AppLocalizations.of(context).resultmcm),
                            content: Text(
                                '${AppLocalizations.of(context).resultmcm} $input4 ${AppLocalizations.of(context).andY} $input5${AppLocalizations.of(context).isEs}${mcdmcm.mcm}'),
                            actions: <Widget>[
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
                            title: Text(AppLocalizations.of(context).resultmcd),
                            content: Text(
                                '${AppLocalizations.of(context).resultmcd} $input1 ${AppLocalizations.of(context).andY} $input2${AppLocalizations.of(context).isEs}${mcdmcm.mcd}'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        ),
                        _stateMcdmcm,
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
                      decoration: InputDecoration(
                        hintText: AppLocalizations.of(context).labelfibona,
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
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.5),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                      controller: controlador6,
                      keyboardType: TextInputType.number,
                      onChanged: (value) => {
                        input6 = value,
                      },
                    ),
                    SizedBox(
                      height: (height * 10) / 100,
                    ),
                    GradientButton(
                      text: AppLocalizations.of(context).btncalcu,
                      onPressed: () => {
                        if (input6 != '')
                          {
                            num6 = int.parse(input6),
                            fibonacci(num6),
                          },

                        //fib.n = num5,
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title:
                                Text(AppLocalizations.of(context).resultfibona),
                            content: Text(
                                '${AppLocalizations.of(context).resultfibona}'
                                ' $input6'
                                '${AppLocalizations.of(context).isEs}\n$fibo'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => {
                                  Navigator.pop(context, 'OK'),
                                  _stateFib(),
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        ),
                      },
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
