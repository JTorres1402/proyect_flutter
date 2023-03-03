import 'package:flutter/material.dart';
import 'package:taller/generated/l10n.dart';
import 'package:taller/screen/screen.dart';
import 'package:taller/widget/widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHome(
        text: AppLocalizations.of(context).inicio,
      ),
      body: BackgroundImage(
        imageUrl: 'https://wallpaperaccess.com/full/1188394.jpg',
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GradientButton(
                text: AppLocalizations.of(context).mat1,
                onPressed: () => {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const MathScreen()),
                  )
                },
              ),
              GradientButton(
                text: AppLocalizations.of(context).mat2,
                onPressed: () => {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const PhysiScreen()),
                  )
                },
              ),
              GradientButton(
                text: AppLocalizations.of(context).mat3,
                onPressed: () => {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const StatisScreen()),
                  )
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
