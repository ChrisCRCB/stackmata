import 'dart:convert';
import 'dart:io';

import 'json/book.dart';

/// Load books from [file].
List<Book> loadBooks(final File file) {
  final text = file.readAsStringSync();
  final json = jsonDecode(text) as Map<String, dynamic>;
  return json.values.map(
    (final e) {
      assert(
        e is Map<String, dynamic>,
        'Wrong format: ${e.runtimeType}.',
      );
      final book = Book.fromJson(e as Map<String, dynamic>);
      return book;
    },
  ).toList();
}
