import 'package:flutter/material.dart';

class TitleText extends StatefulWidget {
  final String text;
  final TextAlign textAlign;
  final int color;
  TitleText ({Key key, @required this.text, @required this.textAlign, @required this.color}) : super(key: key);
  _TitleTextState createState() => _TitleTextState();
}

class _TitleTextState extends State<TitleText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      textAlign: widget.textAlign,
      style: TextStyle(
        color: Color(widget.color),
        fontWeight: FontWeight.normal,
        fontSize: 100.0,
      ),
    );
  }
}

class SubTitleText extends StatefulWidget {
  final String text;
  final TextAlign textAlign;
  final int color;
  SubTitleText ({Key key, @required this.text, @required this.textAlign, @required this.color}) : super(key: key);
  _SubTitleTextState createState() => _SubTitleTextState();
}

class _SubTitleTextState extends State<SubTitleText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      textAlign: widget.textAlign,
      style: TextStyle(
        color: Color(widget.color),
        fontWeight: FontWeight.normal,
        fontSize: 50.0,
      ),
    );
  }
}

class SimpleText extends StatefulWidget {
  final String text;
  final TextAlign textAlign;
  final int color;
  SimpleText ({Key key, @required this.text, @required this.textAlign, @required this.color}) : super(key: key);
  _SimpleTextState createState() => _SimpleTextState();
}

class _SimpleTextState extends State<SimpleText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      textAlign: widget.textAlign,
      style: TextStyle(
        color: Color(widget.color),
        fontWeight: FontWeight.normal,
        fontSize: 30.0,
      ),
    );
  }
}
