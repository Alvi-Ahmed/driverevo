import 'package:driverevo/application/auth/auth_bloc.dart';
import 'package:driverevo/login.dart';
import 'package:driverevo/main.dart';
import 'package:flutter/material.dart';

// import 'checkbox.dart';

class UserInput extends StatefulWidget {
  @override
  State<UserInput> createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {
  bool isClean = false;
  bool interaction = false;
  bool sidemirror = false;
  bool parking = false;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return bgColor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text("Owner Input Data"),
        backgroundColor: secondaryColor,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 100,
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
                  height: MediaQuery.of(context).size.height / 1.25,
                  child: Center(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "* Does the Driver cleans the car regularly? ",
                                  style: TextStyle(
                                    color: bgColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                //CheckBox()
                                Checkbox(
                                  checkColor: secondaryColor,
                                  fillColor: MaterialStateProperty.resolveWith(
                                      getColor),
                                  value: isClean,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isClean = value!;
                                    });
                                  },
                                ),
                              ],
                            ),
                            // SizedBox(
                            //   height: 2,
                            // ),
                            Row(
                              children: [
                                const Text(
                                  "* Is the Driver's Padestrian Interactions Good? ",
                                  style: TextStyle(
                                    color: bgColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                //CheckBox()
                                Checkbox(
                                  checkColor: secondaryColor,
                                  fillColor: MaterialStateProperty.resolveWith(
                                      getColor),
                                  value: interaction,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      interaction = value!;
                                    });
                                  },
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Text(
                                  "* Does the Driver Follow Side Mirror? ",
                                  style: TextStyle(
                                    color: bgColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                //CheckBox()
                                Checkbox(
                                  checkColor: secondaryColor,
                                  fillColor: MaterialStateProperty.resolveWith(
                                      getColor),
                                  value: sidemirror,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      sidemirror = value!;
                                    });
                                  },
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Text(
                                  "* Is the Driver's Parking Skill Good? ",
                                  style: TextStyle(
                                    color: bgColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                //CheckBox()
                                Checkbox(
                                  checkColor: secondaryColor,
                                  fillColor: MaterialStateProperty.resolveWith(
                                      getColor),
                                  value: parking,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      parking = value!;
                                    });
                                  },
                                ),
                              ],
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
                                  'Submit',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
