enum KanaType { hiragana, katakana }

extension KanaTypeJson on KanaType {
  String get jsonValue {
    switch (this) {
      case KanaType.hiragana:
        return 'hiragana';
      case KanaType.katakana:
        return 'katakana';
    }
  }

  static KanaType fromJson(String value) {
    switch (value) {
      case 'hiragana':
        return KanaType.hiragana;
      case 'katakana':
        return KanaType.katakana;
      default:
        throw ArgumentError('Unknown KanaType: $value');
    }
  }
}

class Kana {
  final String romaji;
  final String kana;
  final KanaType type;

  const Kana({required this.romaji, required this.kana, required this.type});

  factory Kana.fromJson(Map<String, dynamic> json) {
    return Kana(
      romaji: json['romaji'] as String,
      kana: json['kana'] as String,
      type: KanaTypeJson.fromJson(json['type'] as String),
    );
  }

  Map<String, dynamic> toJson() {
    return {'romaji': romaji, 'kana': kana, 'type': type.jsonValue};
  }
}
