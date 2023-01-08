import 'package:dyma_animation_app/fade_in.dart';
import 'package:flutter/material.dart';

import 'animated_square.dart';

class MainWidget extends StatefulWidget {
  const MainWidget({super.key});

  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 60),
      alignment: Alignment.center,
      child: Center(
        child: Center(
          // child: AnimatedSquare(
          //   animation: _controller,
          // ),
          child: FadeIn(
            animation: _controller,
            child: const Test(),
          ),
        ),
      ),
    );
  }
}

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('1234');
  }
}
