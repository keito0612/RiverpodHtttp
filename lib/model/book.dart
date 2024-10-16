import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@freezed
class Book with _$Book {
  // プロパティを指定
  const factory Book(
      {required String title,
      required List<String> authors,
      required String publisher,
      required String publishedDate,
      required String description}) = _Book;
  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}
