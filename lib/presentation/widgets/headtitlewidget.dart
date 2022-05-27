import 'package:flutter/cupertino.dart';

class HeadTitle extends StatelessWidget {
  final String title;
  const HeadTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
    );
  }
}
