class Degree {
  String type;
  String name;
  String start;
  String end;
  String context;
  String school;

  Degree(
      {this.type, this.name, this.end, this.start, this.context, this.school});

  static List<Degree> getDegrees() {
    return <Degree>[
      Degree(
        type: "Master",
        name: "Informatique, ingénierie et innovation",
        school: "Université Catholique de Lille",
        start: "2017",
        end: "2019",
        context: "- Apprentissage de Spring Boot\n"
            "- Découverte de docker\n"
            "- Apprentissage d'Angular\n"
            "- Approfondissement des compétences en C/C++ avec des TP utilisant des bibliothèques telles que SHA1\n"
            "- Approfondissement des compétences en BigData avec Talend\n"
            "- Approfondissement des notions de réseaux.\n"
            "- Notion d'intelligence artificielle",
      ),
      Degree(
        type: "Licence Pro",
        name: "Services Informatiques aux Organisations",
        school: "Université Polytechnique des Hauts-de-France",
        start: "2016",
        end: "2017",
        context:
            "Licence Professionnelle Services Informatiques aux Organisations\n"
            "- Découverte du BigData avec noSql et Hbase\n"
            "- Approfondissement de différents langages de programmation comme le Java/C++\n"
            "- Apprentissage de C#\n"
            "- Découverte du framework Symfony\n"
            "- Projet d'étude PiPlay : vidéothèque cross-Plateforme",
      ),
      Degree(
        type: "DUT",
        name: "Informatique",
        school: "Université Polytechnique des Hauts-de-France",
        start: "2014",
        end: "2016",
        context:
            "Diplôme orienté sur la programmation avec différents langages :\n"
            "- C/C++\n"
            "- Assembleur\n"
            "- Java\n"
            "- HTML/CSS/JS\n"
            "Une partie plus orientée système avec des notions de réseaux (architecture), sur le système linux :\n"
            "- Shell/bash\n"
            "- Protocole IP/Plan\n"
            "Une partie base de données avec les langages PostgreSQL, MYSQL et leur conception (UML).",
      ),
    ];
  }
}
