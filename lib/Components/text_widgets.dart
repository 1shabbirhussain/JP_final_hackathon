import 'package:flutter/material.dart';

import '../assets/colors.dart';

// import 'package:asdfg/assets/colors.dart';

////MediumRegularText
class MediumRegularText extends StatelessWidget {
  final String text;
  final Color? customcolor;
  MediumRegularText({Key? key, required this.text, this.customcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      style: TextStyle(
          fontFamily: "Source-San-3",
          fontSize: 16,
          color: customcolor ?? Colors.black),
    );
  }
}

////MediumBoldText
class MediumBoldText extends StatelessWidget {
  final String text;
    final Color? customcolor;
  const MediumBoldText({Key? key, required this.text, this.customcolor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:  TextStyle(
          fontFamily: "Source-San-3",
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: customcolor ?? Colors.black),
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
    );
  }
}

////MediumItalicText
class MediumItalicText extends StatelessWidget {
  final String text;
    final Color? customcolor;
  const MediumItalicText({Key? key, required this.text, this.customcolor});

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      text,
      style:  TextStyle(
          fontFamily: "Source-San-3",
          fontSize: 16,
          fontStyle: FontStyle.italic,
          color: customcolor ?? Colors.black),
    );
  }
}

////HeadingRegularText
class HeadingRegularText extends StatelessWidget {
  final String text;
  final Color? color;
  const HeadingRegularText({Key? key, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      text,
      style: TextStyle(
          fontSize: 24,
          color: color ?? MyColors.black100, // Use 'color' here
          fontFamily: "Source-San-3",),
    );
  }
}

////HeadingBoldText
class HeadingBoldText extends StatelessWidget {
  final String text;
  final Color? color; // Use 'Color?' to make it nullable

  const HeadingBoldText({
    Key? key,
    required this.text,
    this.color, // Make it optional
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      text,
      style: TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 24,
          color: color ?? MyColors.black100, // Use 'color' here
          fontFamily: "Source-San-3",),
    );
  }
}

///HeadingItalicText
class HeadingItalicText extends StatelessWidget {
  final String text;
  final Color? color;

  const HeadingItalicText({Key? key, required this.text, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      text,
      style: TextStyle(
          fontStyle: FontStyle.italic,
          fontSize: 24,
          color: color ?? MyColors.black100,
          fontFamily: "Source-San-3",),
    );
  }
}

////SmallRegularText
class SmallRegularText extends StatelessWidget {
  final String text;
    final Color? customcolor;
  const SmallRegularText({Key? key, required this.text, this.customcolor});

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      text,
      style:  TextStyle(
        color: customcolor ?? Colors.black54,
        fontFamily: "Source-San-3",
      ),
    );
  }
}

////SmallBoldText
class SmallBoldText extends StatelessWidget {
  final String text;
    final Color? customcolor;
  const SmallBoldText({Key? key, required this.text, this.customcolor});

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      text,
      style:  TextStyle(
          fontWeight: FontWeight.w600,
          color: customcolor ?? Colors.black54,
          fontFamily: "Source-San-3"),
    );
  }
}

////SmallItalicText
class SmallItalicText extends StatelessWidget {
  final String text;
    final Color? customcolor;
  const SmallItalicText({Key? key, required this.text, this.customcolor});

  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      text,
      style: TextStyle(
          fontStyle: FontStyle.italic,
          color: customcolor ?? Colors.black54,
          fontFamily: "Source-San-3"),
    );
  }
}
