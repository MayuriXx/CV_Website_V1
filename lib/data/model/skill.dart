class Skill {
  String name;
  String pictureUrl;

  Skill({this.name, this.pictureUrl});

  static List<Skill> getSkills() {
    return <Skill>[
      Skill(
          name: "Flutter",
          pictureUrl: "https://cdn.worldvectorlogo.com/logos/flutter-logo.svg"),
      Skill(
          name: "Kotlin",
          pictureUrl:
              "https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Kotlin-logo.svg/1200px-Kotlin-logo.svg.png"),
      Skill(
          name: "Firebase",
          pictureUrl:
              "https://www.gstatic.com/devrel-devsite/prod/vbf66214f2f7feed2e5d8db155bab9ace53c57c494418a1473b23972413e0f3ac/firebase/images/touchicon-180.png"),
      Skill(
        name: "Github",
        pictureUrl:
            "https://upload.wikimedia.org/wikipedia/commons/9/91/Octicons-mark-github.svg",
      ),
      Skill(
          name: "Bitbucket",
          pictureUrl:
              "https://img-0.journaldunet.com/SB1BcyahD-RqsvoW9mDVlkss4vE=/1280x/smart/b4f92d7c8461431d9e966a245a222145/ccmcms-jdn/11552839.jpg"),
      Skill(
          name: "DEV APP MOBILE",
          pictureUrl:
              "https://www.codeur.com/blog/wp-content/uploads/2017/02/generateur-app-sans-developpeur-700x423.jpg"),
      Skill(
          name: "RESTful",
          pictureUrl:
              "https://marmelab.com/static/microrest_small-b2ca85a71002bd4a7ce04eeee4a7ea78.jpg"),
      Skill(
          name: "Docker",
          pictureUrl:
              "https://img-0.journaldunet.com/OSE8ch_Gw7bsHspirCbhAO9tztY=/1280x/smart/4cfbed5bddb0467bbecad96ca168bbe3/ccmcms-jdn/11507000.jpg"),
      Skill(
          name: "Travis CI",
          pictureUrl:
              "https://travis-ci.org/images/logos/TravisCI-Mascot-1.png"),
      Skill(
          name: "Méthode Agile",
          pictureUrl:
              "https://juancasac.files.wordpress.com/2016/08/aglie2.jpg?w=680"),
      Skill(
          name: "Oracle",
          pictureUrl:
              "https://www.windows8facile.fr/wp-content/uploads/2017/10/oracle-logo-600x300.jpg"),
      Skill(
          name: "Big Data",
          pictureUrl:
              "https://www.possibility.fr/wp-content/uploads/2019/03/big-data.jpg"),
      Skill(
          name: "Windev",
          pictureUrl: "https://www.pcsoft.fr/img/visuels/25/logo-windev.png"),
      Skill(
          name: "Domotique",
          pictureUrl:
              "https://thumbs.dreamstime.com/z/ic%C3%B4ne-lin%C3%A9aire-de-domotique-logo-moderne-d-ensemble-133524904.jpg"),
      Skill(
          name: "Home Assistant",
          pictureUrl:
              "https://raw.githubusercontent.com/home-assistant/home-assistant-assets/master/logo-small.png"),
      Skill(
          name: "Jeedom",
          pictureUrl:
              "https://blog.jeedom.com/wp-content/uploads/2014/07/logo-jeedom-grand-nom-couleur-1004x768.png"),
      Skill(
          name: "Raspberry pi",
          pictureUrl:
              "https://upload.wikimedia.org/wikipedia/fr/thumb/3/3b/Raspberry_Pi_logo.svg/1200px-Raspberry_Pi_logo.svg.png")
    ];
  }
}
