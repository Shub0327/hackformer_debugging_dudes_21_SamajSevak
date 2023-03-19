import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login/constants.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:go_router/go_router.dart';

import '../login/login_using_phone.dart';

class splash_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    );

    return MaterialApp(
      title: 'Introduction screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: cButtonColor),
      home: OnBoardingPage(),
    );
  }
}

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => LoginPhone()),
    );
  }
  //
  // Widget _buildFullscreenImage() {
  //   return Image.asset(
  //     'assets/fullscreen.jpg',
  //     fit: BoxFit.cover,
  //     height: double.infinity,
  //     width: double.infinity,
  //     alignment: Alignment.center,
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,

      // bodyPadding: EdgeInsets.fromLTRB(16.0, .0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      allowImplicitScrolling: true,
      autoScrollDuration: 3000,
      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(
          child: Image.asset(
            'images/Mask group.png',
            width: double.infinity,
          ),
        ),
      ),
      // globalFooter: SizedBox(
      //   width: double.infinity,
      //   height: 60,
      //   child: ElevatedButton(
      //     child: const Text(
      //       'Let\'s go right away!',
      //       style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      //     ),
      //     onPressed: () => _onIntroEnd(context),
      //   ),
      // ),
      pages: [
        PageViewModel(
          title: "One-stop platform for Community Services",
          body:
          "Building relationships with families, fostering a sense of belonging, and promoting social development.",
          image: Container(
            margin: EdgeInsets.all(0.2),
            child: Image.asset(
              'images/hands.png',
            ),
          ),
          // decoration: pageDecoration,
          decoration: pageDecoration.copyWith(
            bodyFlex: 2,
            imageFlex: 4,
            bodyAlignment: Alignment.bottomCenter,
            imageAlignment: Alignment.center,
          ),
        ),
        PageViewModel(
          title: "JanSevak - The Guardian",
          body:
          "Jansevak offers a range of opportunities for you to get involved in your community and make a difference.",
          image: Container(
            margin: EdgeInsets.all(0.2),
            child: Image.asset(
              'images/onboarding2.png',
            ),
          ),
          // decoration: pageDecoration,
          decoration: pageDecoration.copyWith(
            imagePadding: EdgeInsets.only(top: 120),
            titlePadding: EdgeInsets.fromLTRB(0, 20, 0, 20),
            bodyFlex: 2,
            imageFlex: 4,
            bodyAlignment: Alignment.bottomCenter,
            imageAlignment: Alignment.center,
          ),
        ),
        PageViewModel(
          title: "Information about tracking and status.",
          body:
          "Jansevak offers a range of opportunities for you to get involved in your community and make a difference.",
          image: Container(
            margin: EdgeInsets.all(0.2),
            child: Image.asset(
              'images/onboard3.png',
            ),
          ),
          // decoration: pageDecoration,
          decoration: pageDecoration.copyWith(
            imagePadding: EdgeInsets.only(top: 120),
            titlePadding: EdgeInsets.fromLTRB(0, 20, 0, 20),
            bodyFlex: 2,
            imageFlex: 4,
            bodyAlignment: Alignment.bottomCenter,
            imageAlignment: Alignment.center,
          ),
          // PageViewModel(
          //   title: "Information about tracking and status.",
          //   body:
          //   "Jansevak offers a range of opportunities for you to get involved in your community and make a difference.",
          //   image: Container(
          //     padding: EdgeInsets.only(top: 50),
          //     child: Image.asset('images/onboard3.png',
          //     ),
          //   ),
          //   decoration: pageDecoration,
          //   // decoration: pageDecoration.copyWith(
          //   //   bodyFlex: 2,
          //   //   imageFlex: 4,
          //   //   bodyAlignment: Alignment.bottomCenter,
          //   //   imageAlignment: Alignment.topCenter,
          //   // ),
          //
          //   reverse: true,
          // ),
        )
      ],
      onDone: () => context.go('/registration'),
      // onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: true,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Start', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color.fromARGB(255, 182, 234, 218),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      // dotsContainerDecorator: const ShapeDecoration(
      //    color: Colors.black87,
      //   shape: RoundedRectangleBorder(
      //      borderRadius: BorderRadius.all(Radius.circular(8.0)),
      //    ),
      //  ),
    );
  }
}
