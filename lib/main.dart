import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_http/model/book.dart';
import 'package:riverpod_http/provider/book_provider.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final books = ref.watch(bookViewModelStateProvider);
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              title: const Text(""),
            ),
            body: books.when(
                data: (data) => bookListWidget(data.books!),
                error: (error, trace) => Center(
                      child: Text(
                        error.toString(),
                        style: const TextStyle(fontSize: 24),
                      ),
                    ),
                loading: () =>
                    const Center(child: CircularProgressIndicator()))));
  }

  Widget bookListWidget(List<Book> books) {
    return ListView.builder(
        itemCount: books.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(books[index].title),
                      Text(books[index].publisher)
                    ],
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          children: books[index]
                              .authors
                              .map((e) => bookRowText(e))
                              .toList()),
                      Text(books[index].publisher)
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }

  Widget bookRowText(String author) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.0),
      child: Text(author),
    );
  }
}
