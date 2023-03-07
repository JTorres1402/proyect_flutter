import 'package:flutter/material.dart';
import 'package:taller/screen/screen.dart';
import '../generated/l10n.dart';
import '../widget/widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //final _formfield = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
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
                padding: EdgeInsets.all((width * 4) / 100),
                child: Container(
                  height: (height * 50) / 100,
                  width: width,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(181, 255, 255, 255),
                      borderRadius: BorderRadius.all(Radius.circular(40))),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.person_pin,
                            color: Color(0xff3e13b5),
                            size: 140,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: EmailInput(inputController: emailController),
                          ),
                          SizedBox(
                            height: (height * 3) / 100,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child:
                                PasswordInput(inputController: passController),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Checkbox(
                                  activeColor: const Color(0xff3e13b5),
                                  value: isChecked,
                                  onChanged: (value) {
                                    setState(() {
                                      isChecked = value!;
                                    });
                                  }),
                              Text(
                                AppLocalizations.of(context).terms,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: (height * 2) / 100,
                          ),
                          DecoratedBox(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: const LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment(1, 1),
                                    colors: [
                                      Color(0xff5029ff),
                                      Color(0xff4b21e6),
                                      Color(0xff451acd),
                                      Color(0xff3e13b5),
                                      Color(0xff370d9d),
                                      Color(0xff2f0687),
                                      Color(0xff270271),
                                      Color(0xff1f005c),
                                    ])),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  elevation: MaterialStateProperty.all(0),
                                  alignment: Alignment.center,
                                  padding: MaterialStateProperty.all(
                                      const EdgeInsets.only(
                                          right: 75,
                                          left: 75,
                                          top: 15,
                                          bottom: 15)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.transparent),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                  )),
                              onPressed: emailController.text != '' &&
                                      passController.text != '' &&
                                      isChecked == true
                                  ? () {
                                      showDialog<String>(
                                        context: context,
                                        builder: (BuildContext context) =>
                                            AlertDialog(
                                          title: Text(
                                              AppLocalizations.of(context)
                                                  .labeluser),
                                          content: Text(
                                              AppLocalizations.of(context)
                                                  .menslogin),
                                          actions: <Widget>[
                                            TextButton(
                                              onPressed: () => {
                                                Navigator.pop(context, 'OK'),
                                                emailController.clear(),
                                                passController.clear(),
                                                isChecked = false,
                                                Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const HomeScreen()),
                                                )
                                              },
                                              child: const Text('OK'),
                                            ),
                                          ],
                                        ),
                                      );
                                    }
                                  : null,
                              child: Text(
                                AppLocalizations.of(context).btnlogin,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
