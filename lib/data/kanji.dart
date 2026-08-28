enum KanjiLevel {
  n5,
  n4,
  n3,
  n2,
  n1,
  hard,
}

extension KanjiLevelJson on KanjiLevel {
  String get jsonValue {
    switch (this) {
      case KanjiLevel.n5:
        return 'N5';
      case KanjiLevel.n4:
        return 'N4';
      case KanjiLevel.n3:
        return 'N3';
      case KanjiLevel.n2:
        return 'N2';
      case KanjiLevel.n1:
        return 'N1';
      case KanjiLevel.hard:
        return 'Hard';
    }
  }

  static KanjiLevel fromJson(String value) {
    switch (value) {
      case 'N5':
        return KanjiLevel.n5;
      case 'N4':
        return KanjiLevel.n4;
      case 'N3':
        return KanjiLevel.n3;
      case 'N2':
        return KanjiLevel.n2;
      case 'N1':
        return KanjiLevel.n1;
      case 'Hard':
        return KanjiLevel.hard;
      default:
        throw ArgumentError('Unknown KanjiLevel: $value');
    }
  }
}

class Kanji {
  final String kanji;
  final int? strokes;
  final List<String> meaning;
  final List<String> kunyomi;
  final List<String> onyomi;
  final KanjiLevel level;

  const Kanji({
    required this.kanji,
    required this.strokes,
    required this.meaning,
    required this.kunyomi,
    required this.onyomi,
    required this.level,
  });

  factory Kanji.fromJson(Map<String, dynamic> json) {
    return Kanji(
      kanji: json['kanji'] as String,
      strokes: json['strokes'] as int?,
      meaning: List<String>.from(json['meaning'] as List),
      kunyomi: List<String>.from(json['kunyomi'] as List),
      onyomi: List<String>.from(json['onyomi'] as List),
      level: KanjiLevelJson.fromJson(json['level'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'kanji': kanji,
      'strokes': strokes,
      'meaning': meaning,
      'kunyomi': kunyomi,
      'onyomi': onyomi,
      'level': level.jsonValue,
    };
  }
}