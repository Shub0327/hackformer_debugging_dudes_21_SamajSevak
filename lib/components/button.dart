import 'package:flutter/material.dart';

class photo_btn extends StatelessWidget {
  photo_btn(
      {Key? key,
      required this.textdata,
      required this.color,
      required this.onpressed})
      : super(key: key);

  final Text textdata;
  final Color color;
  final Function onpressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          onpressed;
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ))),
        child: textdata);
  }
}

class Button extends StatelessWidget {
  Button(
      {Key? key,
      required this.textdata,
      required this.color,
      required this.onpressed})
      : super(key: key);

  final Widget textdata;
  final Color color;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ))),
        onPressed: onpressed,
        child: textdata);
  }
}
