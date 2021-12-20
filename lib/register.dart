import 'package:driverevo/application/auth/auth_bloc.dart';
import 'package:driverevo/login.dart';
import 'package:driverevo/main.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: bgColor,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 28,
                ),
                Icon(
                  Icons.directions_car,
                  size: MediaQuery.of(context).size.height / 8,
                  color: secondaryColor,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 60,
                ),
                const Text(
                  "Register",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    color: secondaryColor,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
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
                  height: MediaQuery.of(context).size.height / 1.55,
                  child: Center(
                    child: SingleChildScrollView(
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
                                  labelStyle:
                                      TextStyle(color: Color(0xff948CC7)),
                                  hintStyle:
                                      TextStyle(color: Color(0xff9E96AF)),
                                  focusColor: Color(0xff948CC7),
                                  labelText: 'Fist Name',
                                  hintText: 'Hint: Rizwan'),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 50,
                            ),
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
                                  labelStyle:
                                      TextStyle(color: Color(0xff948CC7)),
                                  hintStyle:
                                      TextStyle(color: Color(0xff9E96AF)),
                                  focusColor: Color(0xff948CC7),
                                  labelText: 'Last Name',
                                  hintText: 'Hint: Hamim'),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 50,
                            ),
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
                                  labelStyle:
                                      TextStyle(color: Color(0xff948CC7)),
                                  hintStyle:
                                      TextStyle(color: Color(0xff9E96AF)),
                                  focusColor: Color(0xff948CC7),
                                  labelText: 'Phone Number',
                                  hintText: '+8801XXXXXXXXX'),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 50,
                            ),
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
                                  labelStyle:
                                      TextStyle(color: Color(0xff948CC7)),
                                  hintStyle:
                                      TextStyle(color: Color(0xff9E96AF)),
                                  focusColor: Color(0xff948CC7),
                                  labelText: 'Email',
                                  hintText: 'driverevo@example.com'),
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
                                  labelStyle:
                                      TextStyle(color: Color(0xff948CC7)),
                                  hintStyle:
                                      TextStyle(color: Color(0xff9E96AF)),
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
                                    backgroundColor: MaterialStateProperty.all(
                                        secondaryColor),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ))),
                                onPressed: () {},
                                child: const Text(
                                  'Register',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ),
                          ],
                        ),
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
                      "Already Have an Account? ",
                      textAlign: TextAlign.center,
                    ),
                    GestureDetector(
                        child: Text(
                          "  Sign In",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
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
