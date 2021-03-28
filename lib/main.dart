import 'package:flutter/material.dart';
import 'package:prototype/ui/header.dart';
import 'package:prototype/views/MultipleChoice.dart';
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
// Uncomment lines 7 and 10 to view the visual layout at runtime.

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(appBar: header(), body: const MultipleChoice()),
    );
  }
}
