import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class LabelRadio extends StatelessWidget {
  const LabelRadio({
    Key? key,
    required this.label,
    required this.groupValue,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final String label;
  // final EdgeInsets padding;
  final bool groupValue;
  final bool value;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: <Widget>[
          Radio<bool>(
              groupValue: groupValue,
              value: value,
              onChanged: (bool? newValue) {
                onChanged(newValue);
              }),
          RichText(
            text: TextSpan(
              text: label,
              style: const TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
