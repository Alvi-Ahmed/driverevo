import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: const Text("Name: Asadul Islam",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text("Age: 28",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                )),
          ),
          const Text("Top Speed By Date",
              style: TextStyle(
                fontSize: 17,
                color: Colors.red,
              )),
          Image.asset("lib/assets/barchart.jpeg"),
          const Text("Overspeeding Count By Date",
              style: TextStyle(
                fontSize: 17,
                color: Colors.red,
              )),
          Image.asset("lib/assets/linechart.jpeg")
        ],
      ),
    );
  }
}
