class Experience {
  String company;
  String titleJob;
  DateTime startJob;
  DateTime endJob;
  String context;

  Experience(
      {this.company, this.context, this.startJob, this.endJob, this.titleJob});

  static List<Experience> getExperiences() {
    return <Experience>[
      Experience(
          titleJob: "Ingénieur Etudes et Développement Junior",
          company: "INEAT Group",
          startJob: DateTime(2019, 09, 01),
          endJob: DateTime.now(),
          context:
              "Développement d'application mobile sur le centre de service en Flutter.\n"
              "- Flutter\n"
              "- Firebase analytics\n"
              "Migration de données depuis Sharepoint via une app Flutter :\n"
              "- Dev app from scratch\n"
              "- API Rest/API Sharepoint/API Graph"),
      Experience(
          titleJob: "Développeur Web",
          company: "Enedis",
          startJob: DateTime(2017, 09, 01),
          endJob: DateTime(2019, 08, 31),
          context:
              "Développement d'outil à destination des directions régionales ou du centre d'expertise nationale.\n"
              "Equipe de 6 développeurs."),
      Experience(
          titleJob: "Développeur Windev",
          company: "Tata Steel",
          startJob: DateTime(2016, 09, 01),
          endJob: DateTime(2017, 08, 31),
          context:
              "Entreprise composée d'un service informatique contenant une dizaine de personnes.\n"
              "- Chargé du développement d'application sur Windev et Webdev.\n"
              "- Première expérience avec la gestion d'une base de données également (Microsoft SQL Server).\n"
              "- Gestion de projets PERT\n"
              "- Découverte du plan catastrophe en entreprise (salle serveur, sauvegarde sur bande, etc.)"),
      Experience(
          titleJob: "Technicien Informatique",
          company: "Tôles Perforées de la Sambre",
          startJob: DateTime(2014, 09, 01),
          endJob: DateTime(2016, 09, 01),
          context: "Maintenance du parc informatique et de la salle serveur.\n"
              "Missions principales :\n"
              "- Gestion de la salle serveur\n"
              "- Gestion du parc informatique\n"
              "Projets :\n"
              "- Changement du matériel salle serveur\n"
              "- Virtualisation des serveurs\n"
              "- Outil de simulation de perforation\n"
              "- Uniformisation des outils\n"
              "Fin d'étude :\n"
              "Développer un programme en Java permettant de prendre les documents de l'ERP, de les convertir en PDF tout en les positionnant au bon endroit en fonction du nom du fichier.\n"),
    ];
  }
}
