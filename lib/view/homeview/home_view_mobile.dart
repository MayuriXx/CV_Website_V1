import 'dart:html' as html;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:my_cv_flutter_web_app/data/model/experience.dart';
import 'package:timeline_tile/timeline_tile.dart';
import '../../theme/theme.dart';

class HomeViewMobile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeViewMobile();
}

class _HomeViewMobile extends State<HomeViewMobile> {
  final format = new DateFormat('dd/MM/yyyy');

  @override
  void dispose() {
    super.dispose();
  }

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
            color: CVColors.bluePrimaryColorDark.withOpacity(0.5),
          ),
        ),
      ),
    );

    final _titlePresentationContainerHomeView = Padding(
      padding: EdgeInsets.only(top: 12, bottom: 12.0),
      child: Text(
        "Bonjour! Petite présentation",
        style: TextStyle(
            fontSize: 28,
            color: CVColors.bluePrimaryColorDark,
            fontFamily: "RobotoRegular"),
      ),
    );

    final _bodyPresentationContainerHomeView = Padding(
      padding: EdgeInsets.only(top: 12.0),
      child: Container(
        width: 600,
        child: Text(
          "Diplômé d'un Master Informatique effectué à l'Université Catholique de Lille. "
          "Développeur Mobile chez Ineat, Lille. "
          "Passionné de football depuis tout petit, récemment de l'impression 3D et bien sûr des nouvelles technologies.",
          style: TextStyle(
              fontSize: 16,
              color: CVColors.bluePrimaryColor,
              fontFamily: "RobotoThin"),
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

    final _experienceTitleContainerHomeView = Container(
      height: 100,
      decoration: BoxDecoration(
        border: Border(
          bottom:
              BorderSide(width: 2.5, color: CVColors.greySecondaryColorLight),
        ),
      ),
      child: Center(
        child: Text(
          "Experience".toUpperCase(),
          style: TextStyle(
              fontFamily: "RobotoRegular",
              color: CVColors.bluePrimaryColorDark,
              fontSize: 20),
        ),
      ),
    );

    final _listViewExperiencesHomeView = ListView.builder(
      shrinkWrap: true,
      itemCount: Experience.getExperiences().length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 12.0, top: 12.0, bottom: 12.0),
              child: Row(
                children: [
                  Icon(
                    Icons.fiber_manual_record,
                    size: 10,
                    color: CVColors.bluePrimaryColorDark,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.0),
                    child: Text(
                      "${format.format(Experience.getExperiences()[index].startJob)}-${format.format(Experience.getExperiences()[index].endJob)}",
                      style: TextStyle(
                          color: CVColors.bluePrimaryColorDark,
                          fontSize: 14,
                          fontFamily: "RobotoRegular"),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.0, right: 24.0, bottom: 12.0),
              child: Text(
                "${Experience.getExperiences()[index].company.toUpperCase()}",
                style: TextStyle(
                    color: CVColors.bluePrimaryColor,
                    fontSize: 14,
                    fontFamily: "RobotoRegular"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.0, right: 24.0, bottom: 12.0),
              child: Text(
                "${Experience.getExperiences()[index].context}",
                style: TextStyle(
                    color: CVColors.bluePrimaryColor,
                    fontSize: 14,
                    fontFamily: "RobotoThin"),
              ),
            ),
          ],
        );
      },
    );

    final _experienceContainerHomeView = Padding(
      padding: EdgeInsets.only(top: 24.0, bottom: 24.0),
      child: Container(
        child: _listViewExperiencesHomeView,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Evan Martho",
          style: TextStyle(
              fontFamily: "RobotoRegular",
              color: CVColors.bluePrimaryColorDark),
          textAlign: TextAlign.center,
        ),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _workPictureContainerHomeView,
            _presentationContainerHomeView,
            _experienceTitleContainerHomeView,
            _experienceContainerHomeView,
          ],
        ),
      ),
    );
  }
}
