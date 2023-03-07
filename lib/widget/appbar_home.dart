import 'package:flutter/material.dart';
import 'package:taller/generated/l10n.dart';
import 'package:taller/screen/screen.dart';

class AppBarHome extends StatelessWidget with PreferredSizeWidget {
  final String text;

  @override
  final Size preferredSize;
  AppBarHome({Key? key, required this.text})
      : preferredSize = const Size.fromHeight(56.0),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title:
          Text(text, style: const TextStyle(color: Colors.white, fontSize: 25)),
      backgroundColor: const Color(0xff1f005c),
      actions: [
        PopupMenuButton(
          onSelected: (value) {
            if (value == '1') {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const PlacesScreen(),
                ),
              );
            } else {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CharactesScreen(),
                ),
              );
            }
          },
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                value: '1',
                child: Text(AppLocalizations.of(context).menuopt1),
              ),
              PopupMenuItem(
                value: '2',
                child: Text(AppLocalizations.of(context).menuopt2),
              ),
            ];
          },
        )

        // IconButton(
        //   icon: const Icon(Icons.more_vert_rounded),
        //   tooltip: 'Option',
        //   onPressed: () {
        //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //         content: Text(AppLocalizations.of(context).mensoption)));
        //   },
        // ),
      ],
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
