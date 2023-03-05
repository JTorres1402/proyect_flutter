import 'package:flutter/material.dart';
import 'package:taller/widget/button.dart';
import '../generated/l10n.dart';
import 'screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment(0.2, 0.5),
            colors: <Color>[
              Color(0xff5029ff),
              Color(0xff4b21e6),
              Color(0xff451acd),
              Color(0xff3e13b5),
              Color(0xff370d9d),
              Color(0xff2f0687),
              Color(0xff270271),
              Color(0xff1f005c),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: (height * 20) / 100,
              ),
              Padding(
                padding: EdgeInsets.all((width * 6) / 100),
                child: Container(
                  height: (height * 50) / 100,
                  width: width,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(181, 255, 255, 255),
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text('hubyvb'),
                      GradientButton(
                        text: AppLocalizations.of(context).btnlogin,
                        onPressed: () => {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()),
                          )
                        },
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
