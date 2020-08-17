import 'dart:html' as html;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:my_cv_flutter_web_app/data/model/degree.dart';
import 'package:my_cv_flutter_web_app/data/model/experience.dart';
import 'package:my_cv_flutter_web_app/data/model/skill.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../theme/theme.dart';

class HomeViewMobile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeViewMobile();
}

class _HomeViewMobile extends State<HomeViewMobile> {
  final format = new DateFormat('dd/MM/yyyy');

  final nameController = TextEditingController();
  final mailController = TextEditingController();
  final subjectController = TextEditingController();
  final messageController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    mailController.dispose();
    subjectController.dispose();
    messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double withContent = MediaQuery.of(context).size.width;

    void customLaunch(command) async {
      if (await canLaunch(command)) {
        await launch(command);
      } else {
        print("can't launch $command");
      }
    }

    final _titleInformationHomeView = Padding(
      padding: EdgeInsets.only(top: 12.0, left: 24.0),
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
      padding: EdgeInsets.only(left: 24.0, top: 12.0, bottom: 12.0),
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

    final _informationContainerHomeView = Padding(
      padding: EdgeInsets.only(left: 24.0, right: 24.0),
      child: Card(
        elevation: 5.0,
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/pictures/evan.png'),
                    fit: BoxFit.fill),
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _titleInformationHomeView,
                  _jobTitleInformationHomeView,
                  _phoneInformationHomeView,
                  _mailInformationHomeView,
                  _adressInformationHomeView,
                  _dateOfBirthInformationHomeView,
                ],
              ),
            ),
            Container(
              height: 40,
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
                        html.window.location.href =
                            "https://github.com/MayuriXx";
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
      ),
    );

    final _workPictureContainerHomeView = Padding(
      padding: EdgeInsets.only(bottom: 36.0),
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
      itemCount: Experience.getExperiences().length - 1,
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
                      "${format.format(Experience.getExperiences()[index].startJob).toUpperCase()}-${format.format(Experience.getExperiences()[index].endJob).toUpperCase()}",
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

    final _educationTitleContainerHomeView = Container(
      height: 100,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 2.5, color: CVColors.greySecondaryColorLight),
          bottom:
              BorderSide(width: 2.5, color: CVColors.greySecondaryColorLight),
        ),
      ),
      child: Center(
        child: Text(
          "Diplômes".toUpperCase(),
          style: TextStyle(
              fontFamily: "RobotoRegular",
              color: CVColors.bluePrimaryColorDark,
              fontSize: 20),
        ),
      ),
    );

    final _listViewEducationHomeView = ListView.builder(
      shrinkWrap: true,
      itemCount: Experience.getExperiences().length - 1,
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
                      "${Degree.getDegrees()[index].start.toUpperCase()}-${Degree.getDegrees()[index].end.toUpperCase()}",
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
              padding: EdgeInsets.only(left: 24.0, right: 24.0),
              child: Text(
                "${Degree.getDegrees()[index].school}",
                style: TextStyle(
                    color: CVColors.bluePrimaryColor,
                    fontSize: 14,
                    fontFamily: "RobotoRegular"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.0, right: 24.0, bottom: 12.0),
              child: Text(
                "${Degree.getDegrees()[index].name.toUpperCase()}",
                style: TextStyle(
                    color: CVColors.bluePrimaryColor,
                    fontSize: 14,
                    fontFamily: "RobotoRegular"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.0, right: 24.0, bottom: 12.0),
              child: Text(
                "${Degree.getDegrees()[index].context}",
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

    final _educationContainerHomeView = Padding(
      padding: EdgeInsets.only(top: 24.0, bottom: 24.0),
      child: Container(
        child: _listViewEducationHomeView,
      ),
    );
    final _skillTitleContainerHomeView = Container(
      height: 100,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 2.5, color: CVColors.greySecondaryColorLight),
          bottom:
              BorderSide(width: 2.5, color: CVColors.greySecondaryColorLight),
        ),
      ),
      child: Center(
        child: Text(
          "Compétences".toUpperCase(),
          style: TextStyle(
              fontFamily: "RobotoRegular",
              color: CVColors.bluePrimaryColorDark,
              fontSize: 20),
        ),
      ),
    );

    final _listViewSkillHomeView = Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 24.0, bottom: 24.0),
      height: 200,
      child: Center(
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: Skill.getSkills().length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 12.0, right: 12.0),
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.network(Skill.getSkills()[index].pictureUrl),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 6.0),
                  child: Text(
                    Skill.getSkills()[index].name,
                    style: TextStyle(
                        fontFamily: "RobotoThin",
                        color: CVColors.bluePrimaryColor,
                        fontSize: 14),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );

    final _skillContainerHomeView = Padding(
      padding: EdgeInsets.only(top: 12.0, bottom: 12.0),
      child: _listViewSkillHomeView,
    );

    final _contactTitleContainerHomeView = Container(
      height: 100,
      decoration: BoxDecoration(
          border: Border(
            top: BorderSide(width: 2.5, color: Colors.white),
            bottom: BorderSide(width: 2.5, color: Colors.white),
          ),
          color: CVColors.greySecondaryColorLight),
      child: Center(
        child: Text(
          "Me contacter".toUpperCase(),
          style: TextStyle(
              fontFamily: "RobotoRegular",
              color: CVColors.bluePrimaryColorDark,
              fontSize: 20),
        ),
      ),
    );

    final _nameContactTextFormFieldHomeView = Padding(
      padding: EdgeInsets.only(),
      child: TextFormField(
        controller: nameController,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: 'Nom',
          border: OutlineInputBorder(),
        ),
      ),
    );

    final _mailContactTextFormFieldHomeView = Padding(
      padding: EdgeInsets.only(top: 12.0),
      child: TextFormField(
        controller: mailController,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: 'Adresse mail',
          border: OutlineInputBorder(),
        ),
      ),
    );

    final _subjectContactTextFormFieldHomeView = Padding(
      padding: EdgeInsets.only(top: 12.0),
      child: TextFormField(
        controller: subjectController,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: 'Sujet',
          border: OutlineInputBorder(),
        ),
      ),
    );

    final _messageContactTextFormFieldHomeView = Padding(
      padding: EdgeInsets.only(top: 12.0),
      child: TextFormField(
        controller: messageController,
        keyboardType: TextInputType.multiline,
        decoration: InputDecoration(
          labelText: 'Message',
          border: OutlineInputBorder(),
        ),
        maxLines: null,
      ),
    );

    final _dividerInformationContactHomeView = Container(
      height: 1,
      width: withContent - 50,
      color: CVColors.greySecondaryColor,
    );

    final _informationContactHomeView = Container(
      padding: EdgeInsets.only(left: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Evan Martho",
            style: TextStyle(
                fontFamily: "RobotoRegular",
                color: CVColors.bluePrimaryColorDark,
                fontSize: 25),
            textAlign: TextAlign.left,
          ),
          Text(
            "Ingénieur Etudes et Développement Junior".toUpperCase(),
            style: TextStyle(
                fontFamily: "RobotoThin",
                color: CVColors.bluePrimaryColorDark,
                fontSize: 14),
            textAlign: TextAlign.left,
          ),
          Padding(
            padding: EdgeInsets.only(top: 24.0),
            child: Text(
              "Téléphone :",
              style: TextStyle(
                  fontFamily: "RobotoBold",
                  color: CVColors.bluePrimaryColorDark,
                  fontSize: 14),
              textAlign: TextAlign.left,
            ),
          ),
          Text(
            "06 18 32 63 18",
            style: TextStyle(
                fontFamily: "RobotoThin",
                color: CVColors.bluePrimaryColorDark,
                fontSize: 14),
            textAlign: TextAlign.left,
          ),
          Padding(
            padding: EdgeInsets.only(top: 24.0),
            child: Text(
              "Email :",
              style: TextStyle(
                  fontFamily: "RobotoBold",
                  color: CVColors.bluePrimaryColorDark,
                  fontSize: 14),
              textAlign: TextAlign.left,
            ),
          ),
          Text(
            "martho.evan@gmail.com",
            style: TextStyle(
                fontFamily: "RobotoThin",
                color: CVColors.bluePrimaryColorDark,
                fontSize: 14),
            textAlign: TextAlign.left,
          ),
          Padding(
              padding: EdgeInsets.only(top: 24.0, bottom: 6.0),
              child: _dividerInformationContactHomeView),
          Row(
            children: [
              IconButton(
                icon: Image.asset(
                  "assets/pictures/logo/github.png",
                  color: CVColors.bluePrimaryColor,
                  width: 22,
                  height: 22,
                ),
                onPressed: () {
                  html.window.location.href = "https://github.com/MayuriXx";
                },
              ),
              IconButton(
                icon: Image.asset(
                  "assets/pictures/logo/linkedin.png",
                  color: CVColors.bluePrimaryColor,
                  width: 22,
                  height: 22,
                ),
                onPressed: () {
                  html.window.location.href =
                      "https://www.linkedin.com/in/evan-martho/";
                },
              ),
            ],
          ),
        ],
      ),
    );

    final _contactContainerHomeView = Container(
      padding: EdgeInsets.only(left: 24.0, top: 24.0, right: 24.0),
      width: withContent,
      child: Column(
        children: [
          _nameContactTextFormFieldHomeView,
          _mailContactTextFormFieldHomeView,
          _subjectContactTextFormFieldHomeView,
          _messageContactTextFormFieldHomeView,
          Padding(
            padding: EdgeInsets.only(top: 24.0, bottom: 24.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: RaisedButton(
                onPressed: () {
                  print(_nameContactTextFormFieldHomeView);
                  customLaunch(
                      "mailto:${mailController.text}?subject=${subjectController.text}&body=Bonjour ${nameController.text},${messageController.text}");
                  mailController.text = "";
                  subjectController.text = "";
                  nameController.text = "";
                  messageController.text = "";
                  },
                child: Text("Envoyer"),
                color: CVColors.bluePrimaryColorDark,
              ),
            ),
          ),
        ],
      ),
    );

    final _bottomContainerHomeView = Container(
      color: Colors.white,
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Text(
          "© ${DateTime.now().year} By Evan Martho in Flutter Web",
          style: TextStyle(
              fontFamily: "RobotoThin",
              fontSize: 12,
              color: CVColors.greySecondaryColorDark),
        ),
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
        child: Stack(
          children: [
            Column(
              children: [
                _workPictureContainerHomeView,
                _presentationContainerHomeView,
                _experienceTitleContainerHomeView,
                _experienceContainerHomeView,
                _educationTitleContainerHomeView,
                _educationContainerHomeView,
                _skillTitleContainerHomeView,
                _skillContainerHomeView,
                _contactTitleContainerHomeView,
                Container(
                  color: CVColors.greySecondaryColorLight,
                  child: Column(
                    children: [
                      _contactContainerHomeView,
                      _informationContactHomeView,
                    ],
                  ),
                ),
                _bottomContainerHomeView,
              ],
            ),
            Center(
              child: new Container(
                  width: withContent,
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
