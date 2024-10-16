import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_http/model/book.dart';

// 生成されるdartファイルを記述
part 'book_state.freezed.dart';
part 'book_state.g.dart';

@freezed
class BookState with _$BookState {
  // プロパティを指定
  const factory BookState({required List<Book>? books}) = _BookState;
  factory BookState.fromJson(Map<String, dynamic> json) =>
      _$BookStateFromJson(json);
}
