import 'package:eas_ppb/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tdWhite,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25.0),
                bottomRight: Radius.circular(25.0)),
            child: Image.asset(
              'lib/images/alfamind logo crop.png',
              scale: 1,
            ),
          ),
        ),
        leadingWidth: 100,
      ),
      backgroundColor: tdWhite,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const SizedBox(
              height: 50.0,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Sign Up',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    color: tdWhite,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3)),
                    ]),
                margin: const EdgeInsets.all(10.0),
                width: 400,
                height: 400,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(children: [
                    SizedBox(height: 30.0),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Email',
                        style: TextStyle(fontSize: 25.0),
                      ),
                    ),
                    TextField(
                        decoration: InputDecoration(
                            hintText: 'Masukkan email',
                            border: UnderlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8.0),
                                    bottomRight: Radius.circular(8.0))))),
                    SizedBox(
                      height: 30.0,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Password',
                        style: TextStyle(fontSize: 25.0),
                      ),
                    ),
                    TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Masukkan password',
                            border: UnderlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8.0),
                                    bottomRight: Radius.circular(8.0))))),
                    SizedBox(height: 30.0),
                    ElevatedButton(
                        style: const ButtonStyle(
                            shape: WidgetStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(8.0)))),
                            backgroundColor: WidgetStatePropertyAll(tdRed),
                            minimumSize: WidgetStatePropertyAll(Size(400, 60))),
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/signin');
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              color: tdWhite,
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0),
                        )),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account? ',
                            style: TextStyle(fontSize: 10.0),
                          ),
                          SizedBox(
                            width: 70.0,
                            child: TextButton(
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, '/signin');
                                },
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Sign in',
                                    style: TextStyle(
                                        color: tdBlue, fontSize: 10.0),
                                  ),
                                )),
                          )
                        ],
                      ),
                    )
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
