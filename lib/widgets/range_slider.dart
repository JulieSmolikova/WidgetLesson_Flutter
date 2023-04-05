import 'package:flutter/material.dart';

class WidgetRangeSlider extends StatefulWidget {
  const WidgetRangeSlider({Key? key}) : super(key: key);

  @override
  State<WidgetRangeSlider> createState() => _WidgetRangeSliderState();
}

class _WidgetRangeSliderState extends State<WidgetRangeSlider> {

  RangeValues _rangeValues = const RangeValues(40, 80);

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      values: _rangeValues,
      min: 0,
      max: 100,
      divisions: 20,
      labels: RangeLabels(
          _rangeValues.start.round().toString(),
          _rangeValues.end.toString()),
      onChanged: (RangeValues values) {
        setState(() {
          _rangeValues = values;
        });
      },
    );
  }
}
