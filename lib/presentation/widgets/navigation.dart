import 'package:flutter/material.dart';

nextpage({required context, required screen}) {
  Navigator.of(context).push(MaterialPageRoute(builder: ((ctx) => screen)));
}
