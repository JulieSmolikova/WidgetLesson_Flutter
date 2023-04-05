import 'package:flutter/material.dart';

class WidgetStepper extends StatefulWidget {
  const WidgetStepper({Key? key}) : super(key: key);

  @override
  State<WidgetStepper> createState() => _WidgetStepperState();
}

class _WidgetStepperState extends State<WidgetStepper> {

  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Stepper(
      type: StepperType.vertical,
      currentStep: currentStep,
      onStepTapped: (index) {
        setState(() {
          currentStep = index;
        });
      },
      onStepContinue: () {
        setState(() {
          currentStep += 1;
        });
      },
      onStepCancel: () {
        setState(() {
          currentStep -= 1;
        });
      },
      steps: [
        Step(
            isActive: currentStep >= 0,
            title: const Icon(Icons.add_circle),
            subtitle: const Text('add'),
            content: const Text('Step 1')),
        Step(
            isActive: currentStep >= 1,
            title: const Icon(Icons.back_hand),
            subtitle: const Text('attention'),
            content: const Text('Step 2')),
        Step(
            isActive: currentStep >= 2,
            title: const Icon(Icons.camera),
            subtitle: const Text('settings'),
            content: const Text('Step 3')),
        Step(
            isActive: currentStep >= 3,
            title: const Icon(Icons.data_exploration_outlined),
            subtitle: const Text('help'),
            content: const Text('Step 4')),
      ],
    );
  }
}