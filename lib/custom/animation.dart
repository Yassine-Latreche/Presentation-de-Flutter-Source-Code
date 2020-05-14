import 'package:flutter/material.dart';
import 'package:presentation/imports.dart';
import 'package:presentation/main.dart';

class FadeAnimation extends StatefulWidget {
  final Widget child;
  final int order;
  final int action;
  FadeAnimation(
      {Key key,
      @required this.child,
      @required this.order,
      @required this.action})
      : super(key: key);
  _FadeAnimationState createState() => _FadeAnimationState();
}

class _FadeAnimationState extends State<FadeAnimation> {
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
        curve: Curves.easeInOutSine,
        child: widget.child,
        duration: Duration(milliseconds: milisec),
        opacity: (widget.action >= widget.order) ? 1.0 : 0.0);
  }
}

class FadeFromLeft extends StatefulWidget {
  final Widget child;
  final int order;
  final int action;
  final double top;
  final double left;
  FadeFromLeft(
      {Key key,
      @required this.child,
      @required this.order,
      @required this.action,
      @required this.top,
      @required this.left})
      : super(key: key);
  _FadeFromLeftState createState() => _FadeFromLeftState();
}

class _FadeFromLeftState extends State<FadeFromLeft> {
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      curve: Curves.easeInOutSine,
      child: FadeAnimation(child: widget.child, order: widget.order, action: widget.action),
      duration: Duration(milliseconds: milisec),
      top: widget.top,
      left:(widget.action >= widget.order) ? widget.left : widget.left - 75,
    );
  }
}

class FadeUp extends StatefulWidget {
  final Widget child;
  final int order;
  final int action;
  final double top;
  final double left;
  FadeUp(
      {Key key,
      @required this.child,
      @required this.order,
      @required this.action,
      @required this.top,
      @required this.left})
      : super(key: key);
  _FadeUpState createState() => _FadeUpState();
}

class _FadeUpState extends State<FadeUp> {
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      curve: Curves.easeInOutSine,
      child: FadeAnimation(child: widget.child, order: widget.order, action: widget.action),
      duration: Duration(milliseconds: milisec),
      left: widget.left,
      top:(widget.action >= widget.order) ? widget.top : widget.top + 75,
    );
  }
}

class FadeUpBL extends StatefulWidget {
  final Widget child;
  final int order;
  final int action;
  final double bottom;
  final double left;
  FadeUpBL(
      {Key key,
      @required this.child,
      @required this.order,
      @required this.action,
      @required this.bottom,
      @required this.left})
      : super(key: key);
  _FadeUpBLState createState() => _FadeUpBLState();
}

class _FadeUpBLState extends State<FadeUpBL> {
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      curve: Curves.easeInOutSine,
      child: FadeAnimation(child: widget.child, order: widget.order, action: widget.action),
      duration: Duration(milliseconds: milisec),
      left: widget.left,
      bottom:(widget.action >= widget.order) ? widget.bottom : widget.bottom - 75,
    );
  }
}

class FadeUpBR extends StatefulWidget {
  final Widget child;
  final int order;
  final int action;
  final double bottom;
  final double right;
  FadeUpBR(
      {Key key,
      @required this.child,
      @required this.order,
      @required this.action,
      @required this.bottom,
      @required this.right})
      : super(key: key);
  _FadeUpBRState createState() => _FadeUpBRState();
}

class _FadeUpBRState extends State<FadeUpBR> {
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      curve: Curves.easeInOutSine,
      child: FadeAnimation(child: widget.child, order: widget.order, action: widget.action),
      duration: Duration(milliseconds: milisec),
      right: widget.right,
      bottom:(widget.action >= widget.order) ? widget.bottom : widget.bottom - 75,
    );
  }
}
