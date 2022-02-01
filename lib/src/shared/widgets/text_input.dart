import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String hintText;

  const TextInput({
    required this.hintText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      child: TextField(
        decoration: InputDecoration(labelText: hintText),
      ),
    );
  }
}
