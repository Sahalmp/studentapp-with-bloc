import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String label;
  final TextInputType type;
  final TextEditingController getcontrol;
  const TextFieldWidget(
      {Key? key,
      required this.label,
      required this.type,
      required this.getcontrol})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: getcontrol,
      decoration: InputDecoration(
        fillColor: Colors.white,
        label: Text(label),
        border: const OutlineInputBorder(),
      ),
      keyboardType: type,
    );
  }
}
