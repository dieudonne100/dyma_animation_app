import 'package:flutter/material.dart';

class FadeTransitionWidget extends StatefulWidget {
  const FadeTransitionWidget({super.key});

  @override
  State<FadeTransitionWidget> createState() => _FadeTransitionWidgetState();
}

class _FadeTransitionWidgetState extends State<FadeTransitionWidget>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideTween;

  @override
  void initState() {
    animationController =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animationController.forward();

    slideTween = Tween<Offset>(begin: const Offset(-1,0), end:  Offset.zero)
        .animate(animationController);
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          FadeTransition(
            opacity: animationController,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.indigo,
            ),
          ),
          const SizedBox(
            height: 26,
          ),
          SlideTransition(
            position: slideTween,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.indigo,
            ),
          ),
        ],
      ),
    );
  }
}
