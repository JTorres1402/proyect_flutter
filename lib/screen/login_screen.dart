import 'package:flutter/material.dart';
import 'package:taller/widget/widget.dart';

import '../generated/l10n.dart';
import 'screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(
        imageUrl: 'https://wallpaperaccess.com/full/1188394.jpg',
        child: Center(
          child: FractionallySizedBox(
            widthFactor: 0.8,
            heightFactor: 0.5,
            child: Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(113, 255, 255, 255),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GradientButton(
                    text: AppLocalizations.of(context).btnlogin,
                    onPressed: () => {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(AppLocalizations.of(context).menslogin),
                        ),
                      ),
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      )
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
