import 'package:flutter/material.dart';
import 'package:widget_lesson/widgets/range_slider.dart';
import 'package:widget_lesson/widgets/rich_text.dart';
import 'package:widget_lesson/widgets/stepper.dart';
import 'package:widget_lesson/widgets/time_of_day.dart';
import 'package:widget_lesson/widgets/visibility.dart';

class WidgetLesson extends StatefulWidget {
  const WidgetLesson({Key? key}) : super(key: key);

  @override
  State<WidgetLesson> createState() => _WidgetLessonState();
}

class _WidgetLessonState extends State<WidgetLesson> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 90,
            left: 70,
            child: Container(
              color: Colors.transparent,
              width: 250,
              height: 40,
              child: const WidgetRangeSlider(),
            ),
          ),

          Positioned(
            top: 145,
            left: 45,
            child: Container(
              color: Colors.transparent,
              width: 280,
              height: 430,
              child: const WidgetStepper(),
            ),
          ),

          Positioned(
            top: 220,
            left: 15,
            child: RotatedBox(
              quarterTurns: 3,
              child: Container(
                color: Colors.transparent,
                width: 250,
                height: 40,
                child: const Center(child: WidgetRichText()),
              ),
            ),
          ),

          Positioned(
            bottom: 110,
            left: 115,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.indigo.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              width: 150,
              height: 90,
              child: const Center(child: WidgetTime())),
          ),

          Positioned(
            bottom: 50,
            left: 90,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10),
              ),
              width: 200,
              height: 50,
              child: const Center(child: WidgetVisibility()),
            ),
          ),


        ],
      ),
    );
  }
}