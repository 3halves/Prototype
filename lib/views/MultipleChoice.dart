import 'package:flutter/material.dart';
import 'package:prototype/ui/LabelRadio.dart';
import 'package:prototype/widgets/multipleChoice/textSection.dart';
import 'package:prototype/widgets/multipleChoice/title.dart';

/// This is the stateful widget that the main application instantiates.
class MultipleChoice extends StatefulWidget {
  const MultipleChoice({Key? key}) : super(key: key);

  @override
  _MultipleChoiceState createState() => _MultipleChoiceState();
}

/// This is the private State class that goes with MultipleChoice.
class _MultipleChoiceState extends State<MultipleChoice> {
  bool _isRadioSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          textSection(context),
          titleSection(),
          LabelRadio(
            label: 'First tappable label text',
            value: true,
            groupValue: _isRadioSelected,
            onChanged: (bool newValue) {
              setState(() {
                _isRadioSelected = newValue;
              });
            },
          ),
          LabelRadio(
            label: 'Second tappable label text',
            value: false,
            groupValue: _isRadioSelected,
            onChanged: (bool newValue) {
              setState(() {
                _isRadioSelected = newValue;
              });
            },
          ),
        ],
      ),
    );
  }
}
