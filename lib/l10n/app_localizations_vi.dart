// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get helloWorld => 'Xin chào thế giới!';

  @override
  String get appTitle => 'Oboemasu';

  @override
  String get kana => 'Kana';

  @override
  String get hiragana => 'Hiragana';

  @override
  String get katakana => 'Katakana';

  @override
  String get kanji => 'Kanji';

  @override
  String chooseTitle(Object title) {
    return 'Chọn cấp độ $title';
  }

  @override
  String charactersAvailable(Object count) {
    return 'Có $count ký tự';
  }

  @override
  String get selectedCharacters => 'Ký tự đã chọn';

  @override
  String dataLoadError(Object title) {
    return 'Không thể tải dữ liệu $title.';
  }

  @override
  String get aboutTitle => 'Giới thiệu Oboemasu';

  @override
  String get aboutCopy => 'Luyện thứ tự nét kana và kanji tiếng Nhật.';

  @override
  String get about => 'Giới thiệu';

  @override
  String get start => 'Bắt đầu';

  @override
  String get revealIn => 'Hiện sau';

  @override
  String progress(Object current, Object total) {
    return '$current / $total';
  }

  @override
  String get finished => 'Đã hoàn thành';

  @override
  String get meaning => 'Ý nghĩa';

  @override
  String get practiceTitle => 'Cải thiện trí nhớ cơ bắp bằng cách luyện viết';

  @override
  String get practiceCopy =>
      'Chọn tùy chọn, chuẩn bị giấy và bút rồi nhấn Bắt đầu.';

  @override
  String get practiceCopy2 =>
      'Viết Kana hoặc Kanji trước khi hết giờ, sau đó xem hoạt ảnh các nét.';

  @override
  String get kanaPracticeCopy =>
      'Chọn katakana, hiragana hoặc cả hai, chuẩn bị giấy và bút rồi nhấn Bắt đầu.';

  @override
  String get kanaPracticeCopy2 =>
      'Viết Kana trước khi hết giờ, sau đó xem hoạt ảnh các nét.';

  @override
  String get kanjiPracticeCopy =>
      'Chọn các cấp độ kanji, chuẩn bị giấy và bút rồi nhấn Bắt đầu.';

  @override
  String get kanjiPracticeCopy2 =>
      'Viết Kanji trước khi hết giờ, sau đó xem hoạt ảnh các nét.';

  @override
  String get kanaSelectionTitle => 'Chọn hiragana, katakana hoặc cả hai';

  @override
  String get kanjiSelectionTitle => 'Chọn một cấp độ';

  @override
  String get aboutWhyTitle => 'Tại sao tôi tạo dự án này';

  @override
  String get aboutWhyCopy =>
      'Trong quá trình học tiếng Nhật, tôi nhận ra rằng nhận biết và đọc chữ là chưa đủ.';

  @override
  String get aboutWhyCopy2 =>
      'Hầu hết ứng dụng thẻ ghi nhớ hiển thị hiragana hoặc katakana và yêu cầu bạn đọc.';

  @override
  String get aboutSource => 'Bạn có thể xem mã nguồn của dự án tại';

  @override
  String get aboutCredits => 'Ghi công';

  @override
  String get aboutKanjiCredit => 'Dữ liệu nét kanji đến từ';

  @override
  String get aboutKanaCredit => 'Dữ liệu nét kana đến từ';

  @override
  String get aboutReferences => 'Tài liệu tham khảo';

  @override
  String get aboutReferencesCopy =>
      'Các tài nguyên này đã giúp tạo trải nghiệm học tập:';

  @override
  String get aboutCopyright => 'Bản quyền';

  @override
  String get aboutCopyrightCopy =>
      'Đây là dự án mã nguồn mở theo giấy phép GNU AGPL.';
}
