import 'package:flutter/material.dart';
import 'package:prototype/ui/text/bold.dart';

Widget titleSection() {
  return Container(
    padding: const EdgeInsets.all(20),
    child: Text.rich(
      bold('Who is correct?'),
      softWrap: true,
      style: TextStyle(fontSize: 24, height: 2),
    ),
  );
}
