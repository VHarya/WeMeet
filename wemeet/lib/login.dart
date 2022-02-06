import 'package:flutter/material.dart';
import 'package:wemeet/template_widgets/PrelobbyTextfield.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(211, 156, 106, 1.0),
              Color.fromRGBO(119, 72, 29, 1.0)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.45, 1.0],
            tileMode: TileMode.clamp
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const Image(image: AssetImage('assets/images/Logo(text-noBG).png')),
                PrelobbyTextfield(
                  controller: emailController,
                  placeholder: "Email",
                  isPassword: false,
                  margin: const EdgeInsets.only(bottom: 20.0),
                ),
                PrelobbyTextfield(
                  controller: passwordController,
                  placeholder: "Password",
                  isPassword: true,
                  margin: const EdgeInsets.only(bottom: 20.0),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0XFF3C3C3C),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      )
                    ),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 18,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password",
                    style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password",
                    style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
    );
  }
}