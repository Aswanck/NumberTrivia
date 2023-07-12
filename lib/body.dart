import 'package:flutter/material.dart';

import 'network/request.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _inputText = TextEditingController();

  String resultText = 'Enter number & Click the button to get ME!!';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          ' $resultText',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 100),
        TextFormField(
          controller: _inputText,
          keyboardType: TextInputType.phone,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter Number',
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () async {
            final inputNumber = _inputText.text;
            final result = await fetchData(number: inputNumber);
            setState(() {
              resultText = result.triviaText;
            });
          },
          child: const Text('Click Me'),
        ),
      ],
    );
  }
}
