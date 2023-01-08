
import 'package:dyma_animation_app/transform.dart';
import 'package:flutter/material.dart';

class ExampleAnimationWidgets extends StatefulWidget {
  const ExampleAnimationWidgets({super.key});

  @override
  State<ExampleAnimationWidgets> createState() =>
      _ExampleAnimationWidgetsState();
}

class _ExampleAnimationWidgetsState extends State<ExampleAnimationWidgets> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ExampleAnimationWidgets'),
        ),
        body: const TransformWidget());
  }
}
