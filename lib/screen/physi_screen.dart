import 'package:flutter/material.dart';
import '../generated/l10n.dart';

class PhysiScreen extends StatelessWidget {
  const PhysiScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
        body: const TabBarView(
          children: [
            Center(
              child: Text('1'),
            ),
            Center(
              child: Text('2'),
            ),
            Center(
              child: Text('3'),
            ),
          ],
        ),
      ),
    );
  }
}
