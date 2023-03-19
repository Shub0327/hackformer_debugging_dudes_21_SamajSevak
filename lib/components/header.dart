import 'package:flutter/material.dart';
import 'package:login/constants.dart';

class Header extends StatelessWidget {
  const Header(
      {super.key,
      required this.HeadText,
      required this.HeadTextSuffix,
      required this.InfoText});
  final String HeadText;
  final String HeadTextSuffix;
  final String InfoText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // const SizedBox(
        //   height: 30,
        // ),
        Container(
          padding: const EdgeInsets.only(left: 30, top: 20),
          // margin: const EdgeInsets.fromLTRB(30, 10, 0, 0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(HeadText, style: mainTextStyle),
                  Text(HeadTextSuffix, style: yellowText
                      //   const TextStyle(
                      //       // fontWeight: FontWeight.bold,
                      //       // color: Colors.orange,
                      //       // fontSize: 20),
                      ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Text(InfoText, textAlign: TextAlign.left, style: infoText),
                ],
              ),
              const SizedBox(
                height: 21,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
