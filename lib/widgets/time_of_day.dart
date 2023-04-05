import 'package:flutter/material.dart';

class WidgetTime extends StatefulWidget {
  const WidgetTime({Key? key}) : super(key: key);

  @override
  State<WidgetTime> createState() => _WidgetTimeState();
}

class _WidgetTimeState extends State<WidgetTime> {

  TimeOfDay time = const TimeOfDay(hour: 10, minute: 30);

  @override
  Widget build(BuildContext context) {

    final hours = time.hour.toString().padLeft(2, '0');
    final minutes = time.minute.toString().padLeft(2, '0');

    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 5,),
            Text('$hours:$minutes'),
            const SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () async{
                  TimeOfDay? newTime = await showTimePicker(
                      context: context,
                      initialTime: time);
                  if (newTime == null) return;
                  setState(() {
                    time = newTime;
                  });
                },
                child: const Text('Select Time'))

          ],
        ),
      );
  }
}