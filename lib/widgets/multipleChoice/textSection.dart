import 'package:flutter/material.dart';
import 'package:prototype/ui/text/bold.dart';

Widget textSection(context) {
  return Container(
    padding: const EdgeInsets.all(20),
    child: Text.rich(
      TextSpan(
        text: 'Art class has ',
        children: <TextSpan>[
          bold('4 '),
          TextSpan(text: 'tables. There are 9 pencils at eacch table.\n'),
          TextSpan(text: 'Ava multiplied '),
          bold('4 X 9 '),
          TextSpan(text: 'to find the total number of pencils.\n'),
          TextSpan(text: 'Finn multiplied '),
          bold('9 X 4 '),
          TextSpan(text: 'to find the total number of pencils.\n'),
        ],
      ),
      softWrap: true,
      style: TextStyle(fontSize: 24, height: 2),
    ),
  );
}
