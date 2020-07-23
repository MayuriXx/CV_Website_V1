import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_cv_flutter_web_app/theme/theme.dart';

class HomeView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeView();
}

class _HomeView extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    double withContent = MediaQuery.of(context).size.width;

    final _workPictureContainerHomeView = Padding(
      padding: EdgeInsets.only(),
      child: Container(
        height: 600,
        width: withContent,
//        color: CVColors.bluePrimaryColorDark,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/pictures/background-1.png'),
              fit: BoxFit.cover),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Container(
            color: CVColors.bluePrimaryColorDark.withOpacity(0.2),
          ),
        ),
      ),
    );

    final _titlePresentationContainerHomeView = Padding(
      padding: EdgeInsets.only(bottom: 12.0),
      child: Text(
        "Bonjour, je suis Evan",
        style: TextStyle(fontSize: 22, color: CVColors.bluePrimaryColorDark, fontFamily: "Roboto"),
      ),
    );

    final _bodyPresentationContainerHomeView = Padding(
      padding: EdgeInsets.only(top: 12.0),
      child: Container(
        width: 400,
        child: Text(
          "I'm a paragraph. Click here to add your own text and edit me. It’s easy. Just click “Edit Text” or double click me to add your own content and make changes to the font. I’m a great place for you to tell a story and let your users know a little more about you.",
          style: TextStyle(fontSize: 15, color: CVColors.bluePrimaryColorLight, fontFamily: "Roboto"),
          textAlign: TextAlign.center,
        ),
      ),
    );

    final _presentationContainerHomeView = Padding(
      padding: EdgeInsets.only(),
      child: Container(
        color: CVColors.greySecondaryColorLight,
        height: 300,
        width: withContent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _titlePresentationContainerHomeView,
            _bodyPresentationContainerHomeView
          ],
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Evan Martho",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _workPictureContainerHomeView,
            _presentationContainerHomeView,
          ],
        ),
      ),
    );
  }
}
