import 'package:flutter/material.dart';

class WidgetVisibility extends StatefulWidget {
  const WidgetVisibility({Key? key}) : super(key: key);

  @override
  State<WidgetVisibility> createState() => _WidgetVisibilityState();
}

class _WidgetVisibilityState extends State<WidgetVisibility> {

  bool isHidden = true;

  void hideAppear() {
    setState(() {
      isHidden = !isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Visibility(
            visible: isHidden,
            child: ElevatedButton(
              onPressed: (){
                hideAppear();
              },
              child: const Text('One'),
            )),
          const SizedBox(width: 10,),
          Visibility(
            visible: !isHidden,
            child: ElevatedButton(
              onPressed: (){
                hideAppear();
              },
              child: const Text('Two'),
            )),
        ],
      );
  }
}
