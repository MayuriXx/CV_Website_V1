import 'dart:html' as html;
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

    final _listViewExperiencesHomeView = Padding(
      padding: EdgeInsets.only(),
      child: ListView(
        shrinkWrap: true,
        children: [
          Container(
            child: Row(
              children: [
                Text("test"),
                Expanded(
                  child: VerticalDivider(
                    color: CVColors.bluePrimaryColorDark,
                    thickness: 5.0,
                    width: 10,
                  ),
                ),
                Text("Company"),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Text("test"),
                Expanded(
                  child: VerticalDivider(
                    color: CVColors.bluePrimaryColorDark,
                    thickness: 5.0,
                    width: 10,
                  ),
                ),
                Text("Company"),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Text("test"),
                Expanded(
                  child: VerticalDivider(
                    color: CVColors.bluePrimaryColorDark,
                    thickness: 5.0,
                    width: 10,
                  ),
                ),
                Text("Company"),
              ],
            ),
          ),
        ],
      ),
    );

    final _experienceContainerHomeView = Padding(
      padding: EdgeInsets.only(),
      child: Container(
        child: _listViewExperiencesHomeView,
      ),
    );

    final _titleInformationHomeView = Padding(
      padding: EdgeInsets.only(left: 24.0),
      child: Text(
        "Evan Martho",
        style: TextStyle(
            color: CVColors.bluePrimaryColorDark,
            fontFamily: "RobotoRegular",
            fontSize: 24),
      ),
    );
    final _jobTitleInformationHomeView = Padding(
      padding: EdgeInsets.only(left: 24.0, bottom: 12.0),
      child: Text(
        "Ingénieur Etudes et Développement Junior",
        style: TextStyle(
            color: CVColors.bluePrimaryColorDark,
            fontFamily: "RobotoThin",
            fontSize: 16),
      ),
    );
    final _phoneInformationHomeView = Padding(
      padding: EdgeInsets.only(left: 24.0, top: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Téléphone :",
            style: TextStyle(
                color: CVColors.bluePrimaryColorDark,
                fontFamily: "RobotoBold",
                fontSize: 14),
          ),
          Text(
            "06 18 32 63 18 18",
            style: TextStyle(
                color: CVColors.bluePrimaryColorDark,
                fontFamily: "RobotoThin",
                fontSize: 14),
          ),
        ],
      ),
    );
    final _mailInformationHomeView = Padding(
      padding: EdgeInsets.only(left: 24.0, top: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email :",
            style: TextStyle(
                color: CVColors.bluePrimaryColorDark,
                fontFamily: "RobotoBold",
                fontSize: 14),
          ),
          Text(
            "martho.evan@gmail.com",
            style: TextStyle(
                color: CVColors.bluePrimaryColorDark,
                fontFamily: "RobotoThin",
                fontSize: 14),
          ),
        ],
      ),
    );
    final _adressInformationHomeView = Padding(
      padding: EdgeInsets.only(left: 24.0, top: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Ville :",
            style: TextStyle(
                color: CVColors.bluePrimaryColorDark,
                fontFamily: "RobotoBold",
                fontSize: 14),
          ),
          Text(
            "Maing",
            style: TextStyle(
                color: CVColors.bluePrimaryColorDark,
                fontFamily: "RobotoThin",
                fontSize: 14),
          ),
        ],
      ),
    );
    final _dateOfBirthInformationHomeView = Padding(
      padding: EdgeInsets.only(left: 24.0, top: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Date de naissance :",
            style: TextStyle(
                color: CVColors.bluePrimaryColorDark,
                fontFamily: "RobotoBold",
                fontSize: 14),
          ),
          Text(
            "28 octobre 1996",
            style: TextStyle(
                color: CVColors.bluePrimaryColorDark,
                fontFamily: "RobotoThin",
                fontSize: 14),
          ),
        ],
      ),
    );

    final _informationContainerHomeView = Card(
      elevation: 4.0,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                height: 500,
                width: 400,
//                color: Colors.grey,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/pictures/evan.png'),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                height: 500,
                width: 390,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _titleInformationHomeView,
                    _jobTitleInformationHomeView,
                    _phoneInformationHomeView,
                    _mailInformationHomeView,
                    _adressInformationHomeView,
                    _dateOfBirthInformationHomeView
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 50,
            color: CVColors.bluePrimaryColorDark,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    icon: Image.asset(
                      "assets/pictures/logo/github.png",
                      color: Colors.white,
                    ),
                    onPressed: () {
                      html.window.location.href = "https://github.com/MayuriXx";
                    }),
                IconButton(
                    icon: Image.asset(
                      "assets/pictures/logo/linkedin.png",
                      color: Colors.white,
                    ),
                    onPressed: () {
                      html.window.location.href =
                          "https://www.linkedin.com/in/evan-martho/";
                    }),
              ],
            ),
          ),
        ],
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
        ),
        actions: [
          FlatButton(
            child: Text(
              "Experience".toUpperCase(),
              style: TextStyle(color: CVColors.bluePrimaryColorDark),
            ),
            onPressed: () {},
          ),
          FlatButton(
            child: Text(
              "Diplômes".toUpperCase(),
              style: TextStyle(color: CVColors.bluePrimaryColorDark),
            ),
            onPressed: () {},
          ),
          FlatButton(
            child: Text(
              "Compétences".toUpperCase(),
              style: TextStyle(color: CVColors.bluePrimaryColorDark),
            ),
            onPressed: () {},
          ),
          FlatButton(
            child: Text(
              "Contact".toUpperCase(),
              style: TextStyle(color: CVColors.bluePrimaryColorDark),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            // The containers in the background
            new Column(
              children: <Widget>[
                _workPictureContainerHomeView,
                _presentationContainerHomeView,
                _experienceContainerHomeView,
              ],
            ),
            Center(
              child: new Container(
                  width: 800,
                  padding: new EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .10,
                  ),
                  child: _informationContainerHomeView),
            ),
          ],
        ),
      ),
    );
  }
}
