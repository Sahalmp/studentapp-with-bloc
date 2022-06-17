import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldWidget extends StatelessWidget {
  final String label;
  final TextInputType type;
  final TextEditingController getcontrol;
  final String expr;
  final int? maxlength;
  TextFieldWidget(
      {Key? key,
      required this.label,
      required this.type,
      required this.getcontrol,
      required this.expr,
      this.maxlength = null})
      : super(key: key);
  final _formKey = GlobalKey<FormState>();
  bool _isValid = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: TextFormField(
          controller: getcontrol,
          decoration: InputDecoration(
            fillColor: Colors.white,
            label: Text("$label"),
            helperText: label == "Name" ? "Eg: John Wick" : "Eg:3-20",
            hintTextDirection: TextDirection.rtl,
            border: const OutlineInputBorder(),
          ),
          maxLength: maxlength,
          keyboardType: type,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.allow(RegExp(expr)),
          ],
          onChanged: (text) {
            _formKey.currentState!.validate();
          },
          validator: (value) {
            if (value!.isEmpty) {
              return 'Enter the ${label.toLowerCase()}';
            } else {
              return (label == 'Name' && RegExp(expr).hasMatch(value)
                  ? value.length < 4
                      ? 'Minimum 4 characters'
                      : null
                  : label == 'Age'
                      ? int.parse(value) >= 3 && int.parse(value) <= 20
                          ? null
                          : "invalid age[3-20]"
                      : null);
            }
          }),
    );
  }
}
