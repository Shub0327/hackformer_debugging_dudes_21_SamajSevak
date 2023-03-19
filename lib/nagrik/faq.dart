import 'package:flutter/material.dart';
import 'package:login/components/card.dart';
import '../components/header.dart';
// testing commit

class Faq extends StatefulWidget {
  const Faq({super.key});

  @override
  State<Faq> createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  List<FaqDetails> Faqs = [
    FaqDetails(
        question: 'Why do we Use it?',
        content:
        'The purpose of a FAQ is generally to provide information on frequent questions or concerns; however, the format is a useful means of organizing information, and text consisting of questions and their answers may thus be called a FAQ regardless of whether the questions are actually frequently asked.'),
    FaqDetails(
        question: 'Where do we Use it?',
        content:
        'The purpose of a FAQ is generally to provide information on frequent questions or concerns; however, the format is a useful means of organizing information, and text consisting of questions and their answers may thus be called a FAQ regardless of whether the questions are actually frequently asked.'),
    FaqDetails(
        question: 'Kashala do we Use it?',
        content:
        'The purpose of a FAQ is generally to provide information on frequent questions or concerns; however, the format is a useful means of organizing information, and text consisting of questions and their answers may thus be called a FAQ regardless of whether the questions are actually frequently asked.'),
    FaqDetails(
        question: 'No do we Use it?',
        content:
        'The purpose of a FAQ is generally to provide information on frequent questions or concerns; however, the format is a useful means of organizing information, and text consisting of questions and their answers may thus be called a FAQ regardless of whether the questions are actually frequently asked.'),
    FaqDetails(
        question: ' do we Use it?',
        content:
        'The purpose of a FAQ is generally to provide information on frequent questions or concerns; however, the format is a useful means of organizing information, and text consisting of questions and their answers may thus be called a FAQ regardless of whether the questions are actually frequently asked.'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(30),
            child: AppBar(
              leading: BackButton(color: Colors.black),
              elevation: 0,
              backgroundColor: Color.fromARGB(0, 255, 255, 255),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const Header(
                  HeadText: 'Frequently Asked ',
                  HeadTextSuffix: 'Questions',
                  InfoText: '',
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: Faqs.map((faq) => FaqCard(faq: faq)).toList()),
              ],
            ),
          ),
        ));
  }
}
