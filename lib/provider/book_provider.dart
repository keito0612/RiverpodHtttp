import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_http/httpManerger.dart';
import 'package:riverpod_http/model/book.dart';
import 'package:riverpod_http/state/book_state.dart';
part 'book_provider.g.dart';

@riverpod
class BookViewModelState extends _$BookViewModelState {
  List<Book> books = [];
  @override
  FutureOr<BookState> build() async {
    await HttpManager((result) {
      if (result.isSuccess) {
        final items = result.data;
        items!.forEach(
          (item) {
            Map<String, dynamic> volume = {
              "title": item['volumeInfo']['title'] ?? "",
              "authors": item['volumeInfo']['authors'] ?? [],
              "publisher": item['volumeInfo']['publisher'] ?? "",
              "publishedDate": item['volumeInfo']['publishedDate'] ?? "",
              "description": item['volumeInfo']['description'] ?? "",
            };
            books.add(Book.fromJson(volume));
          },
        );
      }
    }).get('/books/v1/volumes', parameters: {
      'q': '{Flutter}',
      'maxResults': '40',
      'langRestrict': 'ja'
    });
    return BookState(books: books);
  }
}
