import 'package:flutter/material.dart';
import 'package:taller/logic/statis_logic.dart';
import 'package:taller/widget/button2.dart';
import '../generated/l10n.dart';

class StatisScreen extends StatefulWidget {
  const StatisScreen({super.key});

  @override
  State<StatisScreen> createState() => _StatisScreenState();
}

class _StatisScreenState extends State<StatisScreen> {
  TextEditingController controlador1 = TextEditingController();
  late String input;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context).mat3,
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: (height * 5) / 100,
              ),
              Center(
                child: Text(
                  AppLocalizations.of(context).mat3,
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: (height * 6) / 100,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: AppLocalizations.of(context).labeldata,
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
                keyboardType: TextInputType.number,
                onChanged: (value) => {input = value},
              ),
              SizedBox(
                height: (height * 5) / 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonCustom(
                    text: AppLocalizations.of(context).btncalcu,
                    onPressed: () => {
                      calculo(),
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: Text(AppLocalizations.of(context).mat3),
                          content: Text(
                              '${AppLocalizations.of(context).data}: $dato \n${AppLocalizations.of(context).resultvariance}${AppLocalizations.of(context).isEs} $rvarianza \n${AppLocalizations.of(context).resultaverage}${AppLocalizations.of(context).isEs} $rmedia \n${AppLocalizations.of(context).resultmode}${AppLocalizations.of(context).isEs} $rmoda '),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () =>
                                  {Navigator.pop(context, 'OK'), dato.clear()},
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      ),
                    },
                  ),
                  ButtonCustom(
                    text: AppLocalizations.of(context).btnadd,
                    onPressed: () =>
                        {agregar(int.parse(input)), controlador1.clear()},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
