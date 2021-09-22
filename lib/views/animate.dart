import 'package:flutter/material.dart';

class Animate extends StatefulWidget {
  const Animate({Key? key}) : super(key: key);

  @override
  _AnimateState createState() => _AnimateState();
}

class _AnimateState extends State<Animate> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(vsync: this, duration:  const Duration(seconds: 2))..repeat(reverse: true);
  late Animation<Offset> _animation = Tween(
    begin: Offset.zero,
    end: Offset(0,0.08),
  ).animate(_controller);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Image(image: AssetImage('assets/images/flying.png'),height: 320,),
    );
  }
}
