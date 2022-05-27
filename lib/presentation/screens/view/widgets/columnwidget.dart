import 'package:flutter/material.dart';

class ViewColumnWidget extends StatelessWidget {
  final String title;
  final String data;
  const ViewColumnWidget({Key? key, required this.title, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.teal,
            fontSize: 25,
          ),
        ),
        Text(
          data,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
      ],
    );
  }
}
