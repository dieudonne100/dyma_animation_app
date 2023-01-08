import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class ContainerAnimatedWidget extends StatefulWidget {
  const ContainerAnimatedWidget({super.key});

  @override
  State<ContainerAnimatedWidget> createState() =>
      _ContainerAnimatedWidgetState();
}

class _ContainerAnimatedWidgetState extends State<ContainerAnimatedWidget> {
  Color containerColor = Colors.blue;
  Size containerSize = const Size(200, 200);
  Random random = Random();

  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      containerSize =
          Size(random.nextInt(200).toDouble(), random.nextInt(200).toDouble());
      containerColor = Color.fromARGB(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
      );
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ContainerAnimatedWidget'),
      ),
      body: SizedBox(
        child: Center(
          child: AnimatedContainer(
            width: containerSize.width,
            height: containerSize.height,
            color: containerColor,
            duration: const Duration(seconds: 1),
          ),
        ),
      ),
    );
  }
}
