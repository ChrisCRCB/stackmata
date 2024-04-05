/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;

/// Link books to authors.
abstract class BookGenreSecondary extends _i1.SerializableEntity {
  BookGenreSecondary._({
    this.id,
    required this.genreId,
    this.genre,
    required this.bookId,
    this.book,
  });

  factory BookGenreSecondary({
    int? id,
    required int genreId,
    _i2.BookGenre? genre,
    required int bookId,
    _i2.Book? book,
  }) = _BookGenreSecondaryImpl;

  factory BookGenreSecondary.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return BookGenreSecondary(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      genreId:
          serializationManager.deserialize<int>(jsonSerialization['genreId']),
      genre: serializationManager
          .deserialize<_i2.BookGenre?>(jsonSerialization['genre']),
      bookId:
          serializationManager.deserialize<int>(jsonSerialization['bookId']),
      book: serializationManager
          .deserialize<_i2.Book?>(jsonSerialization['book']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int genreId;

  /// The genre to use.
  _i2.BookGenre? genre;

  int bookId;

  /// The book to use.
  _i2.Book? book;

  BookGenreSecondary copyWith({
    int? id,
    int? genreId,
    _i2.BookGenre? genre,
    int? bookId,
    _i2.Book? book,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'genreId': genreId,
      if (genre != null) 'genre': genre?.toJson(),
      'bookId': bookId,
      if (book != null) 'book': book?.toJson(),
    };
  }
}

class _Undefined {}

class _BookGenreSecondaryImpl extends BookGenreSecondary {
  _BookGenreSecondaryImpl({
    int? id,
    required int genreId,
    _i2.BookGenre? genre,
    required int bookId,
    _i2.Book? book,
  }) : super._(
          id: id,
          genreId: genreId,
          genre: genre,
          bookId: bookId,
          book: book,
        );

  @override
  BookGenreSecondary copyWith({
    Object? id = _Undefined,
    int? genreId,
    Object? genre = _Undefined,
    int? bookId,
    Object? book = _Undefined,
  }) {
    return BookGenreSecondary(
      id: id is int? ? id : this.id,
      genreId: genreId ?? this.genreId,
      genre: genre is _i2.BookGenre? ? genre : this.genre?.copyWith(),
      bookId: bookId ?? this.bookId,
      book: book is _i2.Book? ? book : this.book?.copyWith(),
    );
  }
}
