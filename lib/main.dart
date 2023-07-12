import 'package:apicall/home.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' API call',
      home:Home(),
    );
  }
}
