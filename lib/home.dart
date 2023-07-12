import 'package:apicall/body.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
   const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Number Trivia",
          ),
          centerTitle: true,
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xfffd1d1d), Color(0xff833ab4), Color(0xffFEBE10)],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.all(20),
             child:Body(),
          ),
        ),
      ),
    );
  }
}
