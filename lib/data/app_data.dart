import 'package:flutter/material.dart';

class AppData {

  // INFORMATIONS PERSONNELLES

  static const fullName = 'SIFA NFUNDIKO LILIANE';

  static const headline =
      'Étudiante en sciences informatiques';

  static const location = 'Goma, Nord-Kivu, RDC';

  static const email = 'lilianenfundiko@gmail.com';

  static const phone = '+243 979427283';

  static const address =
      'Goma, République démocratique du Congo';

  static const github =
      'https://github.com/LilianeNfundiko';



  // PRESENTATION

  static const about =
      "Passionné par les technologies, le développement logiciel "
      "et les réseaux informatiques. Curieux, motivé et désireux "
      "de mettre mes compétences au service de projets utiles.";


  // FORMATION

  static const education = [

    EducationItem(
      period: 'En cours',
      title: 'surprise',
      subtitle: 'jejesurprise',
      detail: 'anniversaire surprise et hotesse',
    ),

  ];


  // EXPERIENCES

  static const experiences = [

    ExperienceItem(
      period: '2025-2026',
      title: 'Stage professionnel',
      organization: 'Hayatcom ',
      detail:
          'Grace à ce stage j_ai eu des comptences à reseau et télécommunication ',
    ),

    ExperienceItem(
      period: 'Mai  2025 - Juillet 2025',
      title: 'hotesse et surprise',
      organization: 'DG et jejesurprise',
      detail:
          'agence de surprise et hotesse',
    ),

  ];


  // COMPETENCES TECHNIQUES

  static const technicalSkills = [

    'Flutter / Dart',
    'HTML / CSS / JavaScript',
    'Python',
    'Réseaux informatiques',
    'Microsoft Word, Excel et PowerPoint',
    'Git et GitHub',

  ];


  // LANGUES

  static const languages = [

    'Français',
    'Swahili',
    'Anglais',
    'shi'
  ];


  // CENTRES D'INTERET

  static const interests = [

    'Développement logiciel',
    'Intelligence artificielle',
    'Réseaux et cybersécurité',
    'Innovation technologique',

  ];


  // FAMILLE

  static const family = [

    FamilyMember(
      name: 'Christophe Nfundiko',
      relationship: 'Père',
      profession: 'Commercant',
      initials: 'P',
      color: Color(0xFF2563EB),
    ),

    FamilyMember(
      name: 'Ernestine Nsimire',
      relationship: 'Mère',
      profession: 'commercante',
      initials: 'M',
      color: Color(0xFFDB2777),
    ),

    FamilyMember(
      name: 'Patrick Nfundiko',
      relationship: 'Frere',
      profession: 'Entrepreneur',
      initials: 'M',
      color: Color(0xFF059669),
    ),

  ];

}


// CLASSE FORMATION

class EducationItem {

  final String period;
  final String title;
  final String subtitle;
  final String detail;

  const EducationItem({
    required this.period,
    required this.title,
    required this.subtitle,
    required this.detail,
  });

}


// CLASSE EXPERIENCE

class ExperienceItem {

  final String period;
  final String title;
  final String organization;
  final String detail;

  const ExperienceItem({
    required this.period,
    required this.title,
    required this.organization,
    required this.detail,
  });

}


// CLASSE MEMBRE DE FAMILLE

class FamilyMember {

  final String name;
  final String relationship;
  final String profession;
  final String initials;
  final Color color;

  const FamilyMember({
    required this.name,
    required this.relationship,
    required this.profession,
    required this.initials,
    required this.color,
  });

}

///////////////////////////////////////////////////////////////////////////////////////////////////
class ApiFamilyMember {
  final int id;
  final String nom;
  final String postnom;
  final String prenom;
  final String lieuNaissance;
  final String dateNaissance;
  final String parente;
  final String? imageUrl;

  const ApiFamilyMember({
    required this.id,
    required this.nom,
    required this.postnom,
    required this.prenom,
    required this.lieuNaissance,
    required this.dateNaissance,
    required this.parente,
    this.imageUrl,
  });

  String get fullName => '$prenom $postnom $nom'.trim();

  factory ApiFamilyMember.fromJson(Map<String, dynamic> json) {
    return ApiFamilyMember(
      id: int.tryParse(json['id'].toString()) ?? 0,
      nom: json['nom']?.toString() ?? '',
      postnom: json['postnom']?.toString() ?? '',
      prenom: json['prenom']?.toString() ?? '',
      lieuNaissance: json['lieu_naissance']?.toString() ?? '',
      dateNaissance: json['date_naissance']?.toString() ?? '',
      parente: json['parente']?.toString() ?? '',
      imageUrl: json['image_url']?.toString(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nom': nom,
      'postnom': postnom,
      'prenom': prenom,
      'lieu_naissance': lieuNaissance,
      'date_naissance': dateNaissance,
      'parente': parente,
    };
  }
}
//////////////////////////////////////////////////////////////////////////////////////////
