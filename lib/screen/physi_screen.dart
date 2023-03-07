import 'package:flutter/material.dart';
import 'package:taller/widget/button.dart';
import 'package:taller/widget/button2.dart';
import '../generated/l10n.dart';
import '../logic/physi_logic.dart';

class PhysiScreen extends StatefulWidget {
  const PhysiScreen({super.key});

  @override
  State<PhysiScreen> createState() => _PhysiScreenState();
}

class _PhysiScreenState extends State<PhysiScreen> {
  late String input1, input2, input3, input4, input5, input6;
  int num1 = 0, num2 = 0, num5 = 0, num6 = 0;
  TextEditingController controlador1 = TextEditingController();
  TextEditingController controlador2 = TextEditingController();
  TextEditingController controlador3 = TextEditingController();
  TextEditingController controlador4 = TextEditingController();
  TextEditingController controlador5 = TextEditingController();
  TextEditingController controlador6 = TextEditingController();

  void _stateParab() {
    setState(() {
      controlador1.clear();
      controlador2.clear();
    });
  }

  void _stateFuer() {
    setState(() {
      controlador5.clear();
      controlador6.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context).mat2,
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
          children: [
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
                      AppLocalizations.of(context).labelparabolic,
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: (height * 3) / 100,
                    ),
                    TextField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff3e13b5), width: 1.5),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff5029ff), width: 1.5),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
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
                      height: (height * 3) / 100,
                    ),
                    TextField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff3e13b5), width: 1.5),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff5029ff), width: 1.5),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
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
                      height: (height * 10) / 100,
                    ),
                    GradientButton(
                      text: AppLocalizations.of(context).btncalcu,
                      onPressed: () {
                        num1 = int.parse(input1);
                        num2 = int.parse(input2);
                        parabolico(num1, num2);
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: Text(
                                AppLocalizations.of(context).resultparaboli),
                            content: Text(
                                '${AppLocalizations.of(context).resultparaboli} ${AppLocalizations.of(context).isEs}$resparabolico'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => {
                                  Navigator.pop(context, 'OK'),
                                  _stateParab(),
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        );
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
                      AppLocalizations.of(context).labelIC,
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: (height * 3) / 100,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: AppLocalizations.of(context).btnaddr,
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
                      height: (height * 3) / 100,
                    ),
                    TextField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff3e13b5), width: 1.5),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff5029ff), width: 1.5),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
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
                      height: (height * 5) / 100,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ButtonCustom(
                          text: AppLocalizations.of(context).btncalcu,
                          onPressed: () {
                            intensidad(int.parse(input4));
                            resistencia.clear();
                            controlador4.clear();
                            showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title:
                                    Text(AppLocalizations.of(context).resultIC),
                                content: Text(
                                    '${AppLocalizations.of(context).resultIC} ${AppLocalizations.of(context).isEs}$ic'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () => {
                                      Navigator.pop(context, 'OK'),
                                      _stateParab(),
                                    },
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                        ButtonCustom(
                          text: AppLocalizations.of(context).btnaddr,
                          onPressed: () {
                            resistencia.add(int.parse(input3));
                            controlador3.clear();
                          },
                        )
                      ],
                    )
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
                      AppLocalizations.of(context).labelforcebody,
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: (height * 3) / 100,
                    ),
                    TextField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff3e13b5), width: 1.5),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff5029ff), width: 1.5),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
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
                      height: (height * 3) / 100,
                    ),
                    TextField(
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff3e13b5), width: 1.5),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff5029ff), width: 1.5),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
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
                      onPressed: () {
                        fuerza(num.parse(input5), num.parse(input6));
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: Text(
                                AppLocalizations.of(context).resultforcebody),
                            content: Text(
                                '${AppLocalizations.of(context).resultforcebody}${AppLocalizations.of(context).isEs}$resfuerza'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => {
                                  Navigator.pop(context, 'OK'),
                                  _stateFuer(),
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        );
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
