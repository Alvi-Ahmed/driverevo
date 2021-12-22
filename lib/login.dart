// ignore_for_file: require_trailing_commas

import 'package:driverevo/chart.dart';
import 'package:driverevo/main.dart';
import 'package:driverevo/register.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xffdedbe8),
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: const Color(0xffdedbe8),
      //   title: const Text(""),
      // ),

      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 18,
                ),
                Icon(
                  Icons.directions_car,
                  size: MediaQuery.of(context).size.height / 4.5,
                  color: secondaryColor,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                const Text(
                  "Sign In",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: secondaryColor,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 24,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    border: Border.all(
                      width: 2,
                      color: const Color(0xffdedbe8),
                    ),
                    color: primaryColor,
                  ),
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: MediaQuery.of(context).size.height / 2.9,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          TextField(
                            style: TextStyle(
                              color: primaryColor,
                            ),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                  borderSide: BorderSide(
                                    width: 0.0,
                                    color: primaryColor,
                                  ),
                                ),
                                fillColor: bgColor,
                                filled: true,
                                labelStyle: TextStyle(color: Color(0xff948CC7)),
                                hintStyle: TextStyle(color: Color(0xff9E96AF)),
                                focusColor: Color(0xff948CC7),
                                labelText: 'Email',
                                hintText: 'Enter Your Email'),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 50,
                          ),
                          TextField(
                            style: TextStyle(
                              color: Color(0xff9E96AF),
                            ),
                            obscureText: true,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                fillColor: Color(0xffdedbe8),
                                filled: true,
                                focusColor: Color(0xff948CC7),
                                labelText: 'Password',
                                labelStyle: TextStyle(color: Color(0xff948CC7)),
                                hintStyle: TextStyle(color: Color(0xff9E96AF)),
                                hintText: 'Enter Your Password'),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height / 50,
                          ),
                          SizedBox(
                            width: 100,
                            height: 40,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(secondaryColor),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ))),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()),
                                );
                              },
                              child: const Text(
                                'Sign In',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "If you did not register. Please, ",
                      textAlign: TextAlign.center,
                    ),
                    GestureDetector(
                        child: Text(
                          " Register",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Register()),
                          );
                        }),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
