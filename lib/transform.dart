import 'package:flutter/material.dart';
import 'dart:math';

class TransformWidget extends StatefulWidget {
  const TransformWidget({super.key});

  @override
  _TransformWidgetState createState() => _TransformWidgetState();
}

class _TransformWidgetState extends State<TransformWidget>
    with SingleTickerProviderStateMixin {
  Size containerSize = const Size(200, 200);
  Color containerColor = Colors.blue;
  late AnimationController controller;
  late Animation<double> rotateTween;
  late Animation<double> slide;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );

    slide = Tween<double>(begin: -300.0, end: 300.0).animate(controller);

    rotateTween = Tween<double>(begin: 0.0, end: 2 * pi).animate(controller)
      ..addListener(
        () {
          setState(() {});
        },
      );

    controller.repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(
        child: Transform.translate(
          offset: Offset(slide.value, slide.value),
          child: Transform.rotate(
            angle: rotateTween.value,
            child: Container(
              width: containerSize.width,
              height: containerSize.height,
              color: containerColor,
            ),
          ),
        ),
      ),
    );
  }
}
